require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  attr_reader :p2_hitpoints

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    $game = Game.new($player_1, $player_2)

    redirect to('/play')
  end

  get '/play' do
    @attack_confirmation = session[:attack_confirmation]

    erb(:play)
  end

  post '/attack' do
    session[:attack_confirmation] = $game.attack($player_2)
    redirect to('/play')
  end

run! if app_file == $0

end
