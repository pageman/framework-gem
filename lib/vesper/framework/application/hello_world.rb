# Sinatra route
# For more info: http://www.sinatrarb.com/
# 
get '/?' do
  erb :hello_world
end

# DataMapper model class
# For more info: http://datamapper.org/
# 
# class User
#   include DataMapper::Resource
# 	
# 	property   :id,         Serial
# 	property   :deleted_at, ParanoidDateTime
# 	timestamps :at
#   
#   property :email, String
#   
# end