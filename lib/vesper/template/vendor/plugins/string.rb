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

  # Capitalizes the first letter of each word in a string
  #
  # Example:
  #  >> 'This is a title'.titleize
  #  => 'This Is A Title'
  #
  def titleize
    title = ''
    self.split(' ').each {|s| title << s.capitalize + ' ' }
    title
  end

  # Truncates by word count, not letter
  #
  # Example:
  #  >> 'One Two Three Four Five'.truncate 3
  #  => 'One Two Three...'
  #
  # Arguments:
  #  length (word count), end_string (attached to the end of a truncated string)
  #
  def truncate length = 100, end_string = '...'
    return if self == nil
    words = self.split()
    words[0..(length-1)].join(' ') + (words.length > length ? end_string : '')
  end

end