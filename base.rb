require 'sinatra'
require 'sinatra/json'

class Base < Sinatra::Base
  get '/' do
    json({ status: 'Sinatra::Base' }, status: 200)
  end
end
