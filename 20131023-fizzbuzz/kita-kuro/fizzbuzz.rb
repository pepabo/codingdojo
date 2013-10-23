class FizzBuzz
  def self.run(number)
    if number % 15 == 0
      return 'fizzbuzz'
    end

    if number % 3 == 0 
      return 'fizz'
    end

    if number % 5 == 0
      return 'buzz'
    end

    number
  end
end
