require 'bundler'
Bundler.require

Tilt.register Tilt::ERBTemplate, 'html'

Dir["./lib/**/*.rb"].each {|file| require file}

run Sinatra::Application