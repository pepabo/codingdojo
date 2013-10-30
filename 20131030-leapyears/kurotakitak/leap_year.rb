module LeapYear
  def leap?
    year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  end
end

class Time
  include LeapYear
end
