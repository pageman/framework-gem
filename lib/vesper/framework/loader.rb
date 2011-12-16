# Use the gems in Gemfile
require 'bundler'
Bundler.require

# Directories to load, in order
['config', 'plugins/**/config', 'plugins/**/application', 'application'].each {|dir| Dir["./#{dir}/**/*.rb"].each {|file| require file}}

# Tell DataMapper that all the models are ready
DataMapper.finalize