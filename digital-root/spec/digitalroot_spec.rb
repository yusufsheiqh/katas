class DigitalRoot
  def root(number)
    number.digits.sum
  end
end

describe DigitalRoot do
  it 'can give a value of 1 when number is 1' do
    sum = DigitalRoot.new
    expect(sum.root(1)).to eq(1)
  end

  it 'can give a value of 2 when number is 2' do
    sum = DigitalRoot.new
    expect(sum.root(2)).to eq(2)
  end

  it 'can give a value of 3 when number is 3' do
    sum = DigitalRoot.new
    expect(sum.root(3)).to eq(3)
  end

  it 'can give a value of 2 when number is 11' do
    sum = DigitalRoot.new
    expect(sum.root(11)).to eq(2)
  end
end
