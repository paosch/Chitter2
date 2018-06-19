require 'sinatra/base'

class Chitter2 < Sinatra::Base
  get '/' do
    'Hello World'
  end

  run! if app_file == $0
end
