require "sinatra/base"
require "sinatra/reloader"
require "./lib/player.rb"
require "./lib/game.rb"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb :index
  end

  post "/start-game" do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect "/play"
  end

  get "/play" do
    @game = $game
    erb :play
  end

  get "/attack" do
    @game = $game
    @game.attack(@game.player2)
    @game.switch_turns
    erb :attack
  end

  run! if app_file == $0 # start the server if ruby file executed directly
end
