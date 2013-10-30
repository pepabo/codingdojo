require 'rspec'
require_relative './leap_year'

describe Time do
  describe 'leap?' do
    it '4年はうるう年であること' do
      expect(Time.local(4).leap?).to be_true
    end

    it '2013年はうるう年ではないこと' do
      expect(Time.now.leap?).to be_false
    end
  end
end
