require 'bundler'
Bundler.require

load_files = [
  'config',
  'ext',
  'lib'
]

load_files.each {|dir| Dir["./#{dir}/**/*.rb"].each {|file| require file}}

DataMapper.finalize

DataMapper.auto_migrate!