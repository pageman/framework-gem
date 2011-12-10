# Use the gems in Gemfile
  require 'bundler'
  Bundler.require

# Directories to load, in order
  load_files = [
    'config',
    'ext',
    'lib'
  ]
  load_files.each {|dir| Dir["./#{dir}/**/*.rb"].each {|file| require file}}

# Tell DataMapper that all the models are ready
  DataMapper.finalize