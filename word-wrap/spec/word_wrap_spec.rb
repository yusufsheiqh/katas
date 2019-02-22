# frozen_string_literal: true

def wrap(string, max_len)
  return '' if string.nil?
  return string if string.length <= max_len

  break_col = string[0...max_len].rindex(' ') || max_len
  string[0...break_col].strip + "\n" + wrap(string[break_col..-1].strip, max_len)
end

describe 'The wrap function' do
  it 'returns empty string when called with nothing' do
    expect(wrap('', 0)).to eq ''
  end

  it 'does not wrap a word shorter than the length' do
    expect(wrap('word', 6)).to eq 'word'
  end

  it 'splits a long word on the length column' do
    expect(wrap('longword', 4)).to eq "long\nword"
  end

  it 'splits a really long word on the length column' do
    expect(wrap('longlongword', 4)).to eq "long\nlong\nword"
  end

  it 'splits a word on a whitespace' do
    expect(wrap('long word', 5)).to eq "long\nword"
  end

  it 'splits a whitespace that is after the column' do
    expect(wrap('long word', 4)).to eq "long\nword"
  end

  it 'splits early when the space is before the column' do
    expect(wrap('long word', 6)).to eq "long\nword"
  end

  it 'keeps as many words on the line as possible' do
    expect(wrap('long long word', 10)).to eq "long long\nword"
  end
end
