class NumberToLCD
    def convert(number)
        '\n' + ' |\n' + ' |'
    end
end

describe NumberToLCD do
    it 'returns empty string when input is empty' do
        expect(subject.convert()).to eq('')
    end

    it 'returns \n  |\n | when input is 1' do
        expect(subject.convert(1)).to eq(
            '\n' +
            ' |' +
            ' |'
        )
    end
end