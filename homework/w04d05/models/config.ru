require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/love.rb'
require_relative './controllers/love_controller.rb'


use Rack::MethodOverride


run LoveController