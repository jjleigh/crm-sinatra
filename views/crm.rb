require_relative 'contacts'
require_reative 'rolodex'
require 'sinatra'

get '/' do 
	@crm_app_name = "My crm"
	erb :index
end


get '/contacts/new' do
end

get '/contacts' do
	@contacts = []
end 

get '/contacts/:id' do
end 