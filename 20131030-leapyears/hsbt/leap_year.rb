module LeapYear
  def leap?
    if year % 400 == 0
      true
    elsif year % 100 == 0
      false
    elsif year % 4 == 0
      true
    else
      false
    end
  end
end

class Time
  include LeapYear
end
