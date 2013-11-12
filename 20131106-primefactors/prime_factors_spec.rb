require 'rspec'
require_relative 'prime_factors'

describe PrimeFactors do
  it '2のときは[2]が返るべき' do
    expect(PrimeFactors.prime_factorize(2)).to eq [2]
  end

  it '3のときは[3]が返るべき' do
    expect(PrimeFactors.prime_factorize(3)).to eq [3]
  end

  it '4のときは[2, 2]が返るべき' do
    expect(PrimeFactors.prime_factorize(4)).to eq [2, 2]
  end

  it '6のときは[2, 3]が返るべき' do
    expect(PrimeFactors.prime_factorize(6)).to eq [2, 3]
  end

  it '9のときは[3, 3]が返るべき' do
    expect(PrimeFactors.prime_factorize(9)).to eq [3, 3]
  end

  it '12のときは[2, 2, 3]が返るべき' do
    expect(PrimeFactors.prime_factorize(12)).to eq [2, 2, 3]
  end

  it '15のときは[3, 5]が返るべき' do
    expect(PrimeFactors.prime_factorize(15)).to eq [3, 5]
  end

  it '21のときは[3, 7]が返るべき' do
    expect(PrimeFactors.prime_factorize(21)).to eq [3, 7]
  end
end
