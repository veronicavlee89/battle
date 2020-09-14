require 'sinatra'

set :session_secret, 'secret session'



get '/' do
  "hello!"
end

get '/secret' do 
  "This is a secret. Shh!"
end 

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end 

get '/named-cat' do 
  p params
  @name = params[:name]
  erb(:index)
end 