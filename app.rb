# -*- mode: ruby, coding: utf-8 -*-
require 'sinatra'
require 'sinatra/activerecord'
require 'pp'
require 'json'
require 'date'

require './models/user'
require './models/prize'
require './models/training_history'
require './models/tv_program'

set :bind, '0.0.0.0'
set :database, {adapter: 'sqlite3', database: 'database.db'}

DEMO_LOGIN_ID = 'muscle808'

get '/' do
  @current_user = User.find_by(login_id: DEMO_LOGIN_ID)
  erb :index
end

get '/test' do
  erb :test
end

# POST: login_id, name, password
post '/signup' do
  ret = nil

  begin
    # s = '{ "name": "筋トレ農場", "login_id": "muscle808", "password": "muscle808" }'
    # u = JSON.parse(s)

    # user = User.new(login_id: u['login_id'], name: u['name'], password: u['password'])
    user = User.new(login_id: params['login_id'], name: params['name'], password: params['password'])
    user.save
    user.login_id + ' ' + user.name
    ret = {
      success: true,
      user: {
        login_id: user.login_id,
        name: user.name,
        point: user.point
      }
    }.to_json
  rescue => e
    ret = {
      success: false,
      message: e.message
    }.to_json
  end

  ret
end

post '/login' do
  ret = nil
  begin
    json = JSON.parse(request.body.read)
    user = User.find_by!(login_id: json['login_id'], password: json['password'])
    ret = { success: true }.to_json
  rescue => e
    ret = { success: false }.to_json
  end

  ret
end

# dt = YYYYMMDDHHmmss
get '/start/:login_id' do |login_id|
  # http://localhost:4567/start/muscle808?dt=201609171631
  begin
    @login_id = login_id
    @datetime = params['dt']
    @current_user = User.find_by(login_id: login_id)
    @target_count = @current_user.training_count
    @obtained_point = 1
  rescue => e
    ret = { success: false, message: e.message }.to_json
  end
  erb :training
end

get '/count/:login_id/:datetime' do |login_id, datetime|
  begin
    pp params
    # user = User.find_by!(login_id: login_id)
    c = TrainingHistory.where("login_id = ? and datetime > ?", login_id, datetime).sum(:count)
    ret = { success: true,
            count: c
          }.to_json
  rescue => e
    ret = { success: false, message: e.message }.to_json
  end

  ret
end

post '/point/add' do
  begin
    json = JSON.parse(request.body.read)
    pp json
    user = User.find_by(login_id: json['login_id'])
    user.point += json['point'].to_i
    user.save
  rescue => e
    ret = { success: false, message: e.message }.to_json
  end

  ret
end

get '/point/:login_id' do |login_id|
  begin
    user = User.find_by!(login_id: login_id)
    ret = { success: true, point: user.point }.to_json
  rescue => e
    ret = { success: false, message: e.message }.to_json
  end

  ret
end

get '/register' do
  ret = nil
  begin
    @current_user = User.find_by(login_id: DEMO_LOGIN_ID)
    @tv_program = TvProgram.find(@current_user.tv_program_id)
  rescue => e
    ret = { success: false, message: e.message }.to_json
  end

  @completed = false
  erb :register
end

post '/register' do
  ret = nil
  begin
    @current_user = User.find_by(login_id: DEMO_LOGIN_ID)
    @current_user.training_type = params['training_type']
    @current_user.training_count = params['training_count']
    @current_user.save
    @tv_program = TvProgram.find(@current_user.tv_program_id)
    #       t.string  "training_type"
    # t.integer "training_count", default: 0
    # t.integer "tv_program_id"
  rescue => e
    pp e
  end

  @completed = true
  erb :register
end

get '/tvprograms' do
  ret = nil
  begin
    @tv_programs = TvProgram.all
  rescue => e
    ret = { success: false, message: e.message }.to_json
    @tv_programs = []
  end

  @current_user = User.find_by(login_id: DEMO_LOGIN_ID)
  erb :tvprograms
end

post '/reservetvprogram' do
  ret = nil
  begin
    json = JSON.parse(request.body.read)
    user = User.find_by(login_id: DEMO_LOGIN_ID)
    user.tv_program_id = json['tv_program_id']
    user.save
    ret = { success: true }.to_json
  rescue => e
    ret = { success: false, message: e.message }.to_json
  end
  ret
end

get '/prizes' do
  ret = nil
  begin
    @prizes = Prize.all
  rescue => e
    ret = { success: false, message: e.message }.to_json
  end

  @current_user = User.find_by(login_id: DEMO_LOGIN_ID)
  erb :prizes
end

# POST params = { 'login_id': muscle808, 'prize_id' = 1 }
post '/getprize' do
  begin
    json = JSON.parse(request.body.read)
    user = User.find_by(login_id: json['login_id'])
    prize = Prize.find_by(id: json['prize_id'].to_i)

    if user.point >= prize.point
      user.point -= prize.point
      ret = {
        success: true,
        message: "#{prize.name} を配送しました。",
        user_point: user.point
      }.to_json
      user.save
    else
      ret = {
        success: false,
        message: "ポイントが不足しています。"
      }.to_json
    end
  rescue => e
    ret = { success: false, message: e.message }.to_json
  end

  ret
end

post '/countup/:login_id' do |login_id|
  dt = params['dt']
  TrainingHistory.create(
    login_id: login_id,
    datetime: dt,
    training_type: 'squat',
    count: 1
  )
end
