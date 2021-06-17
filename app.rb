require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb :index
  end

  post "/start-game" do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect "/play"
  end

  get "/play" do
    # @player2_points = 60
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play
  end

  get "/attack" do
    erb :attack
  end
  run! if app_file == $0 # start the server if ruby file executed directly
end
