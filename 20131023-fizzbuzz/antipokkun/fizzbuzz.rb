class FizzBuzz
  def self.one(number)
    if number % 15 == 0
      'FizzBuzz'
    elsif number % 3 == 0
      'Fizz'
    elsif number % 5 == 0
      'Buzz'
    else
      number
    end
  end

  def self.to(number)
    result = []
    1.upto(number) do |i|
      result.push self.one(i)
    end
    result
  end
end
