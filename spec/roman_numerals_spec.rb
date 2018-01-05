require './lib/roman_numerals'

describe Integer do
  context 'roman_numeralize' do
    it 'converts 0 to \'\'' do
      expect(0.roman_numeralize).to eq ''
    end
    it 'converts 152 to \'CLII\'' do
      expect(152.roman_numeralize).to eq 'CLII'
    end
    it 'converts an integer to a roman numeral' do
      expect(1904.roman_numeralize).to eq 'MCMIV'
    end
    it 'converts a 4 to a \'IV\'' do
      expect(4.roman_numeralize).to eq 'IV'
    end
    it 'converts a 3 to a \'III\'' do
      expect(3.roman_numeralize).to eq 'III'
    end
    it 'converts 1994 to MCMXCIV' do
      expect(1994.roman_numeralize).to eq 'MCMXCIV'
    end
    it 'converts 2018 to MMXVIII' do
      expect(2018.roman_numeralize).to eq 'MMXVIII'
    end
  end
end