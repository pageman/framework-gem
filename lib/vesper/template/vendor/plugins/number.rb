module Number
  
  # Converts a number to a dollar
  #
  # Example:
  #  >> 1.dollarize
  #  => '$1.00'
  #
  # Note:
  #  This isn't a currency conversion, it's only a string
  #
  def dollarize
    num = self
    "$%.2f" % num.to_f
  end

  # Returns true if a number is even
  #
  # Example:
  #  >> 2.even?
  #  => true
  #
  def even?
    self%2 == 0
  end
  
  # Returns true if a number is odd
  #
  # Example:
  #  >> 2.even?
  #  => false
  #
  def odd?
    self%2 != 0
  end
  
  # Truncates a number to a float
  #
  # Example:
  #  >> 1.234.truncate_to_decimal 2
  #  => 1.23
  #
  # Arguments:
  #  dec (number of digits after the decimal, defaults to 1)
  #
  # Note:
  #  The standard truncate methods returns an integer
  #
  def truncate_to_decimal dec = 1
    num = self
    rounded = "%.#{dec}f" % num.to_f
    rounded = rounded.to_s.split('.').first if rounded.to_s.end_with?('0')
    rounded.to_f
  end

end

# Include the above module in Fixnum and Float classes
  Fixnum.class_eval { include Number }
  Float.class_eval  { include Number }