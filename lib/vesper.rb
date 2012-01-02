require "vesper/version"

module Vesper

  require 'bundler'
  Bundler.require
  
  Tilt.register Tilt::ERBTemplate, 'html'

  set :views, './views'
  set :public_folder, './public'
    
  [
    'plugins/**/hooks/pre-boot.rb',
    'config',
    'plugins/**/config',
    'plugins/**/application',
    'application',
    'plugins/**/hooks/post-boot.rb'
  ].each {|dir| Dir["./#{dir}/**/*.rb"].each {|file| require file}}
    
  error(400) { redirect '/400.html' }
  error(401) { redirect '/401.html' }
  error(403) { redirect '/403.html' }
  error(404) { redirect '/404.html' }
  error(408) { redirect '/408.html' }
  error(500) { redirect '/500.html' }
  error(502) { redirect '/502.html' }
  
end