# Shows DataMapper queries alongside page requests:
# DataMapper::Logger.new $stdout, :debug

# Setup a SQLite database for development
  DataMapper.setup(:default, "sqlite://#{Dir.pwd}/data/development.sqlite3")

# Optionally set up a MySQL database for production
# configure :production do
#   DataMapper.setup(:default, {
#     adapter: 'mysql',
#     host: '',
#     username: '' ,
#     password: '',
#     database: ''})
# end