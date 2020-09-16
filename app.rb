require 'sinatra/base'

class Battle < Sinatra::Base

  attr_reader :p2_hitpoints

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]

    redirect to('/play')
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @attack_confirmation = session[:attack_confirmation]

    session[:p2_hitpoints] = 100 if session[:p2_hitpoints].nil?
    @p2_hitpoints = session[:p2_hitpoints]

    erb(:play)
  end

  post '/attack' do
    session[:p2_hitpoints] -= 10
    session[:attack_confirmation] = "You have attacked #{session[:player_2]}!"

    redirect to('/play')
  end

run! if app_file == $0

end
