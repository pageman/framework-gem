helpers do
  
  def active(path)
    'active' if request.path_info.include? "/#{path}"
  end
  
  def hidden
    'display: none;'
  end
  
end