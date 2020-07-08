require 'duplicates'

describe 'duplicates' do

  duplicates = Duplicates.new

  describe 'count' do

    it('should return 0') do
      expect(duplicates.count('a')).to eq 0
    end

  end

end
