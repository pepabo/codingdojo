require 'rspec'
require_relative './fizzbuzz'

describe FizzBuzz do
  it '1のとき' do
    expect(FizzBuzz.run(1)).to be == 1
  end

  it '2のとき, 2を返すべき' do
    expect(FizzBuzz.run(2)).to be == 2
  end

  it '3のとき, fizzを返すべき' do
    expect(FizzBuzz.run(3)).to be == 'fizz'
  end

  it '4のとき, 4を返すべき' do
    expect(FizzBuzz.run(4)).to be == 4 
  end

  it '5のとき, buzzを返すべき' do
    expect(FizzBuzz.run(5)).to be == 'buzz' 
  end

  it '6のとき, fizzを返すべき' do
    expect(FizzBuzz.run(6)).to be == 'fizz' 
  end

  it '7のとき, 7を返すべき' do
    expect(FizzBuzz.run(7)).to be == 7
  end

  it '8のとき, 8を返すべき' do
    expect(FizzBuzz.run(8)).to be == 8
  end

  it '9のとき, fizzを返すべき' do
    expect(FizzBuzz.run(9)).to be == 'fizz'
  end

  it '10のとき, buzzを返すべき' do
    expect(FizzBuzz.run(10)).to be == 'buzz'
  end

  it '11のとき, 11を返すべき' do
    expect(FizzBuzz.run(11)).to be == 11 
  end

  it '12のとき, fizzを返すべき' do
    expect(FizzBuzz.run(12)).to be ==  'fizz' 
  end

  it '13のとき, 13を返すべき' do
    expect(FizzBuzz.run(13)).to be == 13 
  end

  it '14のとき, 14を返すべき' do
    expect(FizzBuzz.run(14)).to be == 14 
  end

  it '15のとき, fizzbuzzを返すべき' do
    expect(FizzBuzz.run(15)).to be == 'fizzbuzz'
  end

  it '30のとき,fizzbuzzを返すべき' do
  end
end
