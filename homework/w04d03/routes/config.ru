require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controller/manga_controller.rb'

run MangaController