require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/insta_controller.rb'

run InstaController