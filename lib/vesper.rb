require "vesper/version"

module Vesper
  require 'bundler'
  Bundler.require

  [
    'config',
    'plugins/**/config',
    'plugins/**/application',
    'application'
  ].each {|dir| Dir["./#{dir}/**/*.rb"].each {|file| require file}}

  DataMapper.finalize
end