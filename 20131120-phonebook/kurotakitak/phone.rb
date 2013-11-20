class PhoneBook
  def initialize(str)
    @numbers = str.split("\n")
  end

  def collision?(index)
    number = @numbers[index]
    @numbers.each_with_index do |num, i|
      next if i == index
      return true if number.index(num) == 0
    end
    return false
  end

  attr_reader :numbers
end
