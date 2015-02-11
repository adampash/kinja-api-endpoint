require 'sinatra'
require "sinatra/jsonp"
require 'httparty'

POST_API = "http://kinja.com/api/core/post"

get '/post/:id' do
  # "Hello, world #{params[:id]}"
  JSONP HTTParty.get("#{POST_API}/#{params[:id]}").body

end
