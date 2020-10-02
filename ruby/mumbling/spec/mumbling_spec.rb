class Mumbler
    def accum(string)
        string.chars.map.with_index(1) { |char, index| (char * index).capitalize }.join('-')
    end
end

describe Mumbler do
    it 'returns an empty string' do
        expect(subject.accum('')).to eq('')
    end

    it 'returns A when input string is a' do
        expect(subject.accum('a')).to eq('A')
    end

    it 'returns B when input string is b' do
        expect(subject.accum('b')).to eq('B')
    end

    it 'returns C when input string is c' do
        expect(subject.accum('c')).to eq('C')
    end

    it 'returns A-Bb when input string is ab' do
        expect(subject.accum('ab')).to eq('A-Bb')
    end

    it 'returns A-Bb-Ccc when input string is abc' do
        expect(subject.accum('abc')).to eq('A-Bb-Ccc')
    end

    it 'returns R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy when input string is RqaEzty' do
        expect(subject.accum('RqaEzty')).to eq('R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy')
    end
end