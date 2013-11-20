require 'rspec'
require_relative 'phone'

describe PhoneBook do
  it '入力文字列から電話帳を初期化できること' do
    book = PhoneBook.new("111\n222\n333\n")
    expect(book.numbers[0]).to eq "111"
    expect(book.numbers[1]).to eq "222"
    expect(book.numbers[2]).to eq "333"
  end

  it '衝突する番号を渡したときに判定できること' do
    book = PhoneBook.new("000\n111\n1112\n")
    expect(book.collision?(0)).to be_false
    expect(book.collision?(1)).to be_false
    expect(book.collision?(2)).to be_true
  end
end
