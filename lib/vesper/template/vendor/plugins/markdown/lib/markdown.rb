String.class_eval do
  
  # Coverts markdown text to html
  #
  # Example:
  #  >> '# Header'.markdown
  #  => '<h1>Header</h1>'
  #
  def markdown
    REDCARPET.render self
  end

end
