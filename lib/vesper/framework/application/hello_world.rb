# Sinatra route
# For more info: http://www.sinatrarb.com/
# 
get '/?' do
  erb :hello_world
end

class User
  # DataMapper model class
  # For more info: http://datamapper.org/
  #
  # include DataMapper::Resource
  #
  # property   :id,         Serial
  # property   :deleted_at, ParanoidDateTime
  # timestamps :at
  #   
  #  property :email, String  

  def knock_knock
    "Who's there?"
  end
end