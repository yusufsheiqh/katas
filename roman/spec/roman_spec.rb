# frozen_string_literal: true

NUMERALS = {
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}.freeze

class NumberConverter
  def convert(number)
    result = ''

    NUMERALS.each do |english_number, roman_numeral|
      while number >= english_number
        result += roman_numeral
        number -= english_number
      end
    end

    result
  end
end

describe NumberConverter do
  {
    1 => 'I',
    2 => 'II',
    3 => 'III',
    4 => 'IV',
    5 => 'V',
    6 => 'VI',
    7 => 'VII',
    9 => 'IX',
    10 => 'X'
  }.each do |english_number, roman_numeral|
    it "can convert #{english_number} to #{roman_numeral}" do
      expect(subject.convert(english_number)).to eq(roman_numeral)
    end
  end
end
