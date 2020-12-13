ENV['SINATRA_ENV'] ||= "development"

#loads gems in gemfile
require 'bundler/setup'
require "sinatra/activerecord"
Bundler.require(:default, ENV['SINATRA_ENV'])

 ActiveRecord::Base.establish_connection(
   :adapter => "sqlite3",
   :database => "db/characters.sqlite"
 )


#require './app/controllers/app'#or require_relative '../app/controllers/app'
require_all 'app'