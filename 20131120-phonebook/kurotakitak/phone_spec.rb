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

  describe '同じ数字が並ぶ番号の場合' do

    it '番号の数字の数が増えていく場合' do
      book = PhoneBook.new("0\n00\n000\n")
      expect(book.collision?(0)).to be_false
      expect(book.collision?(1)).to be_true
      expect(book.collision?(2)).to be_true
    end

    it '番号の数字の数が減っていく場合' do
      book = PhoneBook.new("000\n00\n0\n")
      expect(book.collision?(0)).to be_true
      expect(book.collision?(1)).to be_true
      expect(book.collision?(2)).to be_false
    end

    it '長さ3文字の数字の場合' do
      book = PhoneBook.new("000\n000\n000\n")
      expect(book.collision?(0)).to be_true
      expect(book.collision?(1)).to be_true
      expect(book.collision?(2)).to be_true
    end

  end

  it '最初の番号の2文字目と次の番号の1文字目が同じでも衝突ではない' do
    book = PhoneBook.new("12\n2\n3\n")
    expect(book.collision?(0)).to be_false
    expect(book.collision?(1)).to be_false
    expect(book.collision?(2)).to be_false
  end

  it '最初の文字と2文字目を入れ替えた時は衝突ではない' do
    book = PhoneBook.new("12\n21\n")
    expect(book.collision?(0)).to be_false
    expect(book.collision?(1)).to be_false
  end

  it '前後の空白が含まれた場合は空白を除く' do
    book = PhoneBook.new(" 12\n12 \n")
    expect(book.collision?(0)).to be_true
    expect(book.collision?(1)).to be_true
  end

  it '人の名前がなかったらanonymousという名前にする' do
    book = PhoneBook.new("123")
    number = "123"
    expect(book.reverse_lookup(number)).to eq "anonymous"
  end

  describe '人の名前と番号を渡す時' do
    it '名前があるときは名前から番号を調べる'
  end
end
