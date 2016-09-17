# -*- mode: ruby, coding: utf-8 -*-
require 'sinatra'
require 'sinatra/activerecord'
require 'pp'
require 'json'

require './models/user'
require './models/prize'
require './models/training_history'

set :bind, '0.0.0.0'
set :database, {adapter: 'sqlite3', database: 'database.db'}

get '/' do
  erb :index
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

get '/point/:login_id' do |login_id|
  begin
    user = User.find_by!(login_id: login_id)
    ret = { success: true, point: user.point }.to_json
  rescue => e
    ret = { success: false, message: e.message }.to_json
  end

  ret
end

get '/prizes' do
  ret = nil
  begin
    prizes = Prize.all
    ret = { success: true, prizes: prizes }.to_json
  rescue => e
    ret = { success: false, message: e.message }.to_json
  end

  ret
end

# POST params = { 'login_id': muscle808, 'prize_id' = 1 }
post '/getprize' do
  begin
    user = User.find_by(login_id: params['login_id'])
    prize = Prize.find(id: params['prize_id'])

    if user.point >= prize.point
      ret = {
        success: true,
        message: "#{prize.name} を配送しました。"
      }.to_json
      user.point -= prize.point
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
