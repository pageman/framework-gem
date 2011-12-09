namespace :db do
  
  desc 'Auto upgrades the database, non-descructive'
  task(:upgrade) { DataMapper.auto_upgrade }
  
  desc 'Auto migrates the database, destructive'
  task(:migrate) { DataMapper.auto_migrate! }
  
end