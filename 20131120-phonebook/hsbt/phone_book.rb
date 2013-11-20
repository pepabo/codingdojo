class PhoneBook
  attr_reader :numbers
  def initialize(str = nil)
    @numbers = str.split("\n")
  end

  def collision?(index)
    master = @numbers[index]
    subset = @numbers.dup
    subset.delete(master)
    subset.inject(false){|r, num| r || (master.include?(num))}
  end
end
