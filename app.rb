require "sinatra/base"
require "sinatra/reloader"
require "./lib/player.rb"
require "./lib/game.rb"
require "./lib/attack.rb"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  get "/" do
    erb :index
  end

  post "/start-game" do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect "/play"
  end

  get "/play" do
    @game
    erb :play
  end

  post "/attack" do
    Attack.run(@game.opponent_of(@game.curr_turn))
    @game.game_over? ? (redirect "/game-over") : (redirect "/attack")
    # if @game.game_over?
    #   redirect "/game-over"
    # else
    #   redirect "/attack"
    # end
  end

  post "/switch-turns" do
    @game.switch_turns
    redirect "/play"
  end

  get "/attack" do
    @game
    erb :attack
  end

  get "/game-over" do
    @game
    erb :game_over
  end

  run! if app_file == $0 # start the server if ruby file executed directly
end
