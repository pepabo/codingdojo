require 'prime'

class PrimeFactors
  def self.prime_factorize(n)
    prime_factors = []
    prime_numbers = Prime::EratosthenesGenerator.new
    prime_number = prime_numbers.next
    while n > 1 do
      if n % prime_number == 0
        prime_factors << prime_number
        n = n / prime_number
      else
        prime_number = prime_numbers.next
      end
    end

    prime_factors
  end
end
