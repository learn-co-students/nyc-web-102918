require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true
  end

  get "/" do
    erb :welcome
  end

## Book contoller portion



  #book






















# Author controller portion

# author




















# shows controller portion



















































































  # messy


end
