require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    "Testing infrastructure working!"
  end

  run! if app_file == $0 # start the server if ruby file executed directly
end
