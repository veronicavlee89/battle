require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    "Hello"
  end
end