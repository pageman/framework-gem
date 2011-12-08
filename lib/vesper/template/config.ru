require 'bundler'
Bundler.require

Tilt.register Tilt::ERBTemplate, 'html'

get '/?' do
  erb :hello_world
end

run Sinatra::Application