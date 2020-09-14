require 'sinatra'

#set :session_secret, 'secret session'

get '/' do
  "hello!"
end

get '/secret' do 
  "This is a secret. Shh!"
end 

get '/cat' do
  erb(:index)
end 