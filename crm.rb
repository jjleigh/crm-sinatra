require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, 'sqlite3:database.sqlite3')

@@rolodex = Rolodex.new
@@rolodex.add_contact(Contact.new("Johnny", "Bravo", "johnny@bitmakerlabs.com", "Rockstar"))


get '/' do 
	@crm_app_name = "Justine's crm"
	erb :index
end

get '/contacts' do
	erb :contacts
end 

get '/contacts/new' do
	erb :new_contact
end

get '/contacts/:id' do
	@contact = @@rolodex.find(params[:id].to_i)
  if @contact
    erb :show_contact
  else
    raise Sinatra::NotFound
  end
end

get '/contacts/:id/edit' do
	@contact = @@rolodex.find(params[:id].to_i)
	if @contact
		erb :edit_contact
	else
		raise Sinatra::NotFound
	end 
end 

put '/contacts/:id' do
	# update an id's stuff
end

delete '/contacts/:id' do
 redirect to '/contacts'
end 

post '/contacts' do 
	contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
	@@rolodex.add_contact(contact)
	redirect to '/contacts'
end 


