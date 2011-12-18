require "vesper/version"

module Vesper

  require 'bundler'
  Bundler.require

  set :views, './views'
  set :public_folder, './public'
    
  [
    'config',
    'plugins/**/config',
    'plugins/**/application',
    'application'
  ].each {|dir| Dir["./#{dir}/**/*.rb"].each {|file| require file}}

  DataMapper.finalize

end