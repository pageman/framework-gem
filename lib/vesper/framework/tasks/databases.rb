# Example:
#  >> rake build
  desc 'Builds the app from scratch'
  task :build => ['db:setup'] do
    exec 'rackup'
  end
  
# Database specific tasks
  namespace :db do
  
  # Example:
  #  >> rake db:setup
    desc 'Creates a new seeded database'
    task :setup => ['db:migrate', 'db:seed']
  
  # Example:
  #  >> rake db:upgrade
    desc 'Auto upgrades the database, non-descructive'
    task(:upgrade) { DataMapper.auto_upgrade }
  
  # Example:
  #  >> rake db:migrate
    desc 'Auto migrates the database, destructive'
    task(:migrate) { DataMapper.auto_migrate! }
  
  # Example:
  #  >> rake db:seed
    desc 'Seeds the database'
    task(:seed) { require "#{Dir.pwd}/data/seeds.rb" }
  
  # Example
  #  >> rake db:transmogrify
    desc 'Alters the data'
    task(:transmogrify) { require "#{Dir.pwd}/data/transmogrify.rb" }
  
  end