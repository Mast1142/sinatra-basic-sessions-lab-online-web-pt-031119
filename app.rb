require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = Item.new(params[:item])
    binding.pry
    session[:item] = @item.id
    @session = session
  end
end
