ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do 
  set :database, 
  'sqlite3:db/database.db'
  end 
  #sets up connectiont to sqlite3 database named database.db and located in a folder called db, you could always hcange the anme of the file ehre to whwatver you may want. 
  #rake will help create the files and/or folders 

#rake gives us the abiltiy to quickly make files and set auto tasks 
require './app'

