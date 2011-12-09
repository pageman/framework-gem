String.class_eval do

  def titleize
    title = ''
    self.split(' ').each {|s| title << s.capitalize + ' ' }
    title
  end
  
end