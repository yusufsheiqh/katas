# frozen_string_literal: true

class PersistentBugger
  def initialize
    @count = 0
  end

  def persistence(number)
    array_of_digits = number.digits
    while array_of_digits.length != 1
      @count += 1
      array_of_digits = array_of_digits.inject(:*).digits
    end
    @count
  end
end

describe PersistentBugger do
  let(:bugger) { PersistentBugger.new }

  it 'can give 0 when number is below 10' do
    expect(bugger.persistence(1)).to eq(0)
  end

  it 'can give 1 when input is a valid 2 digit integer' do
    expect(bugger.persistence(11)).to eq(1)
  end

  it 'can give 2 when input is a valid 2 digit integer' do
    expect(bugger.persistence(25)).to eq(2)
  end

  it 'can give 3 when input is a valid 2 digit integer' do
    expect(bugger.persistence(39)).to eq(3)
  end

  it 'can give 1 when input is 909' do
    expect(bugger.persistence(909)).to eq(1)
  end
end
