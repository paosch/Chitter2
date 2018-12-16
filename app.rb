require 'sinatra/base'
require './lib/chitter'

class ChitterManager < Sinatra::Base
  enable :sessions
  get '/' do
    @messages = Chitter.all
    erb :index
  end

  get '/new' do
    erb :new_message
  end

  post '/' do
    Chitter.create(message: params['message'])
    redirect '/'
  end

  post '/delete' do
    Chitter.delete(params['id'])
    redirect '/'
  end

  get '/update/:id' do
    session[:id] = params['id']
    erb :update_message
  end

  post '/update' do
    Chitter.update(session[:id], params[:message])
    redirect '/'
  end

run! if app_file == $0
end
