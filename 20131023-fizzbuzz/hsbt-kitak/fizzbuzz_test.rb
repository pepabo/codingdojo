require 'test/unit'

require_relative './fizzbuzz'

class FizzBuzzTest < Test::Unit::TestCase
  def test_fizz_buzz
    assert_equal 1, FizzBuzz.run(1)
    assert_equal 2, FizzBuzz.run(2)
    assert_equal 'Fizz', FizzBuzz.run(3)
    assert_equal 4, FizzBuzz.run(4)
    assert_equal 'Buzz', FizzBuzz.run(5)
    assert_equal 'Fizz', FizzBuzz.run(6)
    assert_equal 7, FizzBuzz.run(7)
    assert_equal 8, FizzBuzz.run(8)
    assert_equal 'Fizz', FizzBuzz.run(9)
    assert_equal 'Buzz', FizzBuzz.run(10)
    assert_equal 11, FizzBuzz.run(11)
    assert_equal 'Fizz', FizzBuzz.run(12)
    assert_equal 13, FizzBuzz.run(13)
    assert_equal 14, FizzBuzz.run(14)
    assert_equal 'FizzBuzz', FizzBuzz.run(15)
  end
end
