String.class_eval do
  def markdown
    REDCARPET.render self
  end
end
