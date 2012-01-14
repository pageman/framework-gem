require "vesper/version"

module Vesper
  
  def self.load_app
    require 'bundler'
    Bundler.require

    set :environment, ENV['env']         if ENV['env']
    set :environment, ENV['environment'] if ENV['environment']
    set :environment, ENV['rack_env']    if ENV['rack_env']
  
    Tilt.register Tilt::ERBTemplate, 'html'

    set :views, './views'
    set :public_folder, './public'
  
    Dir["./plugins/**/pre-boot.rb"].each {|file| require file}
    
    [
      'config',
      'plugins/**/config',
      'plugins/**/application',
      'application'
    ].each {|dir| Dir["./#{dir}/**/*.rb"].each {|file| require file}}
  
    Dir["./plugins/**/post-boot.rb"].each {|file| require file}
    
    error(400) { redirect '/400.html' }
    error(401) { redirect '/401.html' }
    error(403) { redirect '/403.html' }
    error(404) { redirect '/404.html' }
    error(408) { redirect '/408.html' }
    error(500) { redirect '/500.html' }
    error(502) { redirect '/502.html' }    
  end
  
  def self.load_tasks
    Dir["./plugins/**/tasks/*"].each {|file| require file}
    Dir["./tasks/**/*"].each {|file| require file}
  end
  
end