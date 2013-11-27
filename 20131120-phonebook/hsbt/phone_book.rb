class PhoneBook
  attr_reader :numbers
  def initialize(str = nil)
    @numbers = str.split("\n").map{|n| n.split(':').map{|v| v.strip} }
  end

  def collision?(index)
    master = @numbers[index]
    subset = @numbers.dup
    subset.delete(master)
    subset.inject(false) do |r, num|
      r || (master[1].match(/\A#{num[1]}/))
    end
  end
end
