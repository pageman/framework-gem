require 'bundler'
Bundler.require

get '/?' do
  "Hello World!"
end

run Sinatra::Application