require 'sinatra/base'

class Chitter2 < Sinatra::Base
  get '/messages' do
    messages = [ "hi, what's up", "busy at work, you?"]
    messages.join
  end

  run! if app_file == $0
end
