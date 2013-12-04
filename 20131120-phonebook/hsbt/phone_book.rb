class PhoneBook
  attr_reader :numbers
  def initialize(str = nil)
    @numbers = extracted_addresses(read_file(str))
  end

  def collision?(index)
    master = @numbers[index]
    subset = @numbers.dup
    subset.delete(master)
    subset.inject(false) do |r, num|
      r || (master[1].match(/\A#{num[1]}/))
    end
  end

  private

  def extracted_addresses(addresses)
    addresses.split("\n").map{|n| n.split(':').map{|v| v.strip} }
  end

  def read_file(str)
    if File.exist?(path(str))
      File.read(str)
    else
      str
    end
  end

  def path(str)
    File.expand_path('../' + str, __FILE__)
  end
end
