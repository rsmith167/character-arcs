require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'

#ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require#(:default, ENV['SINATRA_ENV'])
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/characters.sqlite"
)

require_all 'app'
#require_relative "../app/models/character.rb"

#rake db:migrate
#rake console
#Character (call 'Character.connection' to establish a connection)