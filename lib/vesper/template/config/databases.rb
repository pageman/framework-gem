# Shows DataMapper queries alongside page requests:
# DataMapper::Logger.new($stdout, :debug)

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/data/development.sqlite3")