String.class_eval do

  def markdown
    Redcarpet.new(self).to_html
  end

  def titleize
    title = ''
    self.split(' ').each {|s| title << s.capitalize + ' ' }
    title
  end

  # Truncates by word count, not letter
  def truncate(length = 100, end_string = '...')
    return if self == nil
    words = self.split()
    words[0..(length-1)].join(' ') + (words.length > length ? end_string : '')
  end

end