# Shows DataMapper queries alongside page requests:
# DataMapper::Logger.new($stdout, :debug)

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/data/development.sqlite3")

# configure :production do
#   DataMapper.setup(:default, {
#     :adapter  => 'mysql',
#     :host     => '',
#     :username => '' ,
#     :password => '',
#     :database => ''})
# end