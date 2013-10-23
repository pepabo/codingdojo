require 'rspec'
require_relative './fizzbuzz'

describe 'FizzBuzz' do
  describe 'one' do
    it { expect(FizzBuzz.one(1)).to be == 1 }
    it { expect(FizzBuzz.one(2)).to be == 2 }
    it { expect(FizzBuzz.one(3)).to be == 'Fizz' }
    it { expect(FizzBuzz.one(4)).to be == 4 }
    it { expect(FizzBuzz.one(5)).to be == 'Buzz' }
    it { expect(FizzBuzz.one(6)).to be == 'Fizz' }
    it { expect(FizzBuzz.one(10)).to be == 'Buzz' }
    it { expect(FizzBuzz.one(15)).to be == 'FizzBuzz' }
  end

  describe 'to' do
    it { expect(FizzBuzz.to(1)).to be == [1] }
    it { expect(FizzBuzz.to(2)).to be == [1, 2] }
    it { expect(FizzBuzz.to(3)).to be == [1, 2, 'Fizz'] }
    it { expect(FizzBuzz.to(4)).to be == [1, 2, 'Fizz', 4] }
    it { expect(FizzBuzz.to(5)).to be == [1, 2, 'Fizz', 4, 'Buzz'] }
    it { expect(FizzBuzz.to(6)).to be == [1, 2, 'Fizz', 4, 'Buzz', 'Fizz'] }
    it { expect(FizzBuzz.to(10)).to be == [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz'] }
    it { expect(FizzBuzz.to(15)).to be == [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz'] }
  end
end
