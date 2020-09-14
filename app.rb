require 'sinatra'

#set :session_secret, 'secret session'

get '/' do
  "hello!"
end

get '/secret' do 
  "This is a secret. Shh!"
end 

get '/cat' do 
  '<img src="http://bit.ly/1eze8aE">'
end 