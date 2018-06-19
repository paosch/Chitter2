require 'sinatra/base'
require './lib/chitter'

class ChitterManager < Sinatra::Base
  get '/messages' do
    @messages = Chitter.all
    erb :index
  end

  run! if app_file == $0
end
