Float.class_eval do
  
  def truncate_to_decimal dec = 1
    rounded = "%.#{dec}f" % self
    rounded = rounded.to_s.split('.').first if rounded.to_s.end_with?('0')
    rounded.to_f
  end
  
end