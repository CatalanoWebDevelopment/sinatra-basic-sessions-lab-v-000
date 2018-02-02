require_relative 'config/environment'
binding.pry

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, 'catalano'
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session["item"] = params[:item]
    @session = session

    erb :purchased
  end

end
