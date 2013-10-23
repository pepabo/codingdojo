class FizzBuzz
  def self.run(number)
    r = number
    r = if number % 15 == 0
          'FizzBuzz'
        elsif number % 3 == 0 
          'Fizz'
        elsif number % 5 == 0
          'Buzz'
        else
          r
        end
    r
  end
end
