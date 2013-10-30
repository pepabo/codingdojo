require 'test/unit'

require_relative './leap_year'

class LeapYearTest < Test::Unit::TestCase
  def test_time_leap
    assert !Time.local(2001, 1, 1, 12, 0, 0).leap?
    assert Time.local(1996, 1, 1, 12, 0, 0).leap?
    assert !Time.local(1900, 1, 1, 12, 0, 0).leap?
    assert Time.local(2000, 1, 1, 12, 0, 0).leap?
  end
end
