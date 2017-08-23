require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controller/posts_controller.rb'

run PostsController