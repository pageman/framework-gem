get '/?' do
  erb :hello_world
end

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