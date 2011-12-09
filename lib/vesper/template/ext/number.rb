module Number
  
  def dollarize
    num = self
    "$%.2f" % num.to_f
  end
  
end

Fixnum.class_eval do
  include Number
end

Float.class_eval do
  include Number
end