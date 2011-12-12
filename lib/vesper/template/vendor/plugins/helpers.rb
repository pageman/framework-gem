helpers do
  
  # Adds a class of 'active' to an element that matches the page url
  # 
  # Example:
  #  <a href="#" class="<%= active '/home' %>">Home</a>
  # 
  # Arguemnts:
  #  path (to match against the current url)
  # 
  def active path
    'active' if request.path_info.include? "/#{path}"
  end
  
  # Displays an alert message div
  # 
  # Example:
  #  session[:flash] = 'Your message here.'
  # 
  # Notes:
  #  Will only display on the next page load
  # 
  def alert
    unless session[:alert].nil?
      msg = session[:alert]
      session[:alert] = nil
      "<div id='alert'>#{msg}</div>"
    end
  end
  
  # Hides an element
  #
  # Example:
  #  <div style="<%= hidden %>">Content to hide</div>
  #
  # Notes:
  #  Works will with if/unless (hidden unless @var.empty?)
  #
  def hidden
    'display: none;'
  end
  
end