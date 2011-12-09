String.class_eval do

  def markdown
    Redcarpet.new(self).to_html
  end

  def titleize
    title = ''
    self.split(' ').each {|s| title << s.capitalize + ' ' }
    title
  end
  
end