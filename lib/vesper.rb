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

end