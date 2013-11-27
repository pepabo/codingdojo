require 'test/unit'
require_relative './phone_book'

class PhoneBookTest < Test::Unit::TestCase
  def test_initialize
    book = PhoneBook.new("alpha: 000\nbravo: 111\ncharlie: 222\n")
    assert book.numbers
    assert_equal "000", book.numbers[0][1]
    assert_equal "111", book.numbers[1][1]
    assert_equal "222", book.numbers[2][1]
  end

  def test_collision?
    book = PhoneBook.new("alpha: 000\nbravo: 111\ncharlie: 111222\n")
    assert !book.collision?(0)
    assert !book.collision?(1)
    assert book.collision?(2)
  end

  def test_collision_2
    book = PhoneBook.new("alpha: 000\nbravo: 111\ncharlie: 222111\n")
    assert !book.collision?(0)
    assert !book.collision?(1)
    assert !book.collision?(2)
  end
end
