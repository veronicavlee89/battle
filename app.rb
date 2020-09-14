require 'sinatra'

set :session_secret, 'secret session'



get '/' do
  "hello!"
end

get '/secret' do 
  "This is a secret. Shh!"
end 

get '/cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end 