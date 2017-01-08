require 'sinatra'
require 'sinatra/json'
require 'sinatra/activerecord'

class Thing < ActiveRecord::Base
  validates_presence_of :name
end

before do
  content_type :json
end

get '/' do
  json({ status: 'Sinatra Rodando' }, status: 200)
end

get '/things/?' do
  @things = Thing.all
  @things.to_json
end

get '/things/:id/?' do
  begin
    @thing = Thing.find(params[:id])
    @thing.to_json
  rescue ActiveRecord::RecordNotFound
    json({ erro: 'Record not Found' }, status: 404)
  end
end
