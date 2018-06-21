require 'sinatra/base'
require './lib/chitter'

class ChitterManager < Sinatra::Base
  get '/messages' do
    @messages = Chitter.all
    erb :index
  end

  get '/messages/new' do
    erb :new_message
  end

  post '/messages' do
    message = params['message']
    connection = PG.connect(dbname: 'chitter_manager_test')
    connection.exec("INSERT INTO chitter (message) VALUES('#{message}')")
    redirect '/messages'
  end
  run! if app_file == $0
end
