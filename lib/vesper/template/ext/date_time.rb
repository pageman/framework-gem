module Timepiece

  def display format = :date
    case format
    when :date
      string = "%A %b %d, %Y"
    when :day
      string = "%b %d, %Y"
    when :day_with_time
      string = "%b %d, %Y at %I:%M%P"
    when :american_day
      string = "%m/%d/%y"
    else
      string = "%A %b %d, %Y"
    end
    self.strftime string
  end

end

DateTime.class_eval do
  include Timepiece
end

Time.class_eval do
  include Timepiece
end