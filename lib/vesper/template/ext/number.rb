module Number

  def dollarize
    num = self
    "$%.2f" % num.to_f
  end

  def even?
    self%2 == 0
  end

  def odd?
    self%2 != 0
  end

end

Fixnum.class_eval do
  include Number
end

Float.class_eval do
  include Number
end