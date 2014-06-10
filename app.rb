require 'sinatra'
require 'sinatra/reloader'
require "sinatra/activerecord"

require_relative 'models/contact'

get '/' do
  @contacts = Contact.all
  erb :index
end

get '/contacts/:id' do
  @id = params[:id]

  erb :show
end
