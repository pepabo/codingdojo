require 'test/unit'
require_relative './phone_book'

class PhoneBookTest < Test::Unit::TestCase
  def test_initialize
    book = PhoneBook.new("000\n111\n222\n")
    assert book.numbers
    assert_equal "000", book.numbers[0]
    assert_equal "111", book.numbers[1]
    assert_equal "222", book.numbers[2]
  end

  def test_collision?
    book = PhoneBook.new("000\n111\n111222\n")
    assert !book.collision?(0)
    assert !book.collision?(1)
    assert book.collision?(2)
  end
end
