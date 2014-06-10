require 'sinatra'

get '/' do 
	puts params
	puts
	"hello world!"
end

get '/about' do
	"This is about my page"
end 

# this is a wildcard, put a wild card last

get '/:name' do
@first_name =params[:name]
erb :name 

end 



# get '/zack' do
# 	"Hi I'm zack!"
# end 

# get '/sebastian' do
# 	"Hi I'm sebastian!"
# end

# get '/justine' do
# 	"Hi I'm justine"
# end 
