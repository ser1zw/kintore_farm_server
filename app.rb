# -*- mode: ruby, coding: utf-8 -*-
require 'sinatra'
require 'sinatra/activerecord'
require 'pp'
require 'json'

require './models/user'

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



