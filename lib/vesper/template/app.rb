require 'bundler'
Bundler.require

load_files = [
  'config',
  'lib'
]

load_files.each {|dir| Dir["./#{dir}/**/*.rb"].each {|file| require file}}