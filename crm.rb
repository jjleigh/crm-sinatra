require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'

get '/' do 
	@crm_app_name = "My crm"
	erb :index
end

get '/contacts/new' do
	erb :new_contact
end

get '/contacts' do
	@contacts = []
end 

post '/contacts' do 
	contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
	@@rolodex.add_contact(contact)
	redirect_to('/contacts')
end 

get '/contacts/:id' do
	
end 

get '/contacts/:id/edit' do
end 


