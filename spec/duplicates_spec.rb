require 'duplicates'

describe 'duplicates' do

  duplicates = Duplicates.new

  describe 'count' do

    it('should return 0') do
      expect(duplicates.count('a')).to eq 0
    end

    it('should return 1') do
      expect(duplicates.count('aa')).to eq 1
      expect(duplicates.count('aaa')).to eq 1
      expect(duplicates.count('bb')).to eq 1
      expect(duplicates.count('bazcvbb')).to eq 1
    end

  end

end
