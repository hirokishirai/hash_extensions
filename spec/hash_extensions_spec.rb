require 'spec_helper'

describe HashExtensions do
  it 'has a version number' do
    expect(HashExtensions::VERSION).not_to be nil
  end

  describe '#swap(a, b)' do
    it 'swaps Hash elements' do
      expect({aaa: 0, bbb: 1, ccc: 2, ddd: 3}.swap(0, 2)).to eq({ccc: 2, bbb: 1, aaa: 0, ddd: 3})
    end
    describe 'Exeptions' do
	    context 'Hash element is less than two' do
	      it 'show you HashExtensionsError: swap requires two or more elements in the hash.' do
					expect{{aaa: 0}.swap(0,2)}.to raise_error(Hash::HashExtensionsError, 'swap requires two or more elements in the hash.')
				end
	    end
	    context 'Hash elements are two or more' do
	      context 'Indeces are not specified' do
	        it 'show you HashExtensionsError: please specify two Hash indices.' do
	          expect{{aaa: 0, bbb: 1, ccc: 2, ddd: 3}.swap}.to raise_error(Hash::HashExtensionsError, 'please specify two Hash indices.')
		end
	      end
	    end
		end
  end

  describe '#swap_only_values_of(a, b)' do
    it 'swaps Hash element values' do
      expect({aaa: 0, bbb: 1, ccc: 2, ddd: 3}.swap_only_values_of(0, 2)).to eq({aaa: 2, bbb: 1, ccc: 0, ddd: 3})
    end
		describe 'Exeptions' do
	    context 'Hash element is less than two' do
	      it 'show you HashExtensionsError: swap_only_values_of requires two or more elements in the hash.' do
					expect{{aaa: 0}.swap_only_values_of(0,2)}.to raise_error(Hash::HashExtensionsError, 'swap_only_values_of requires two or more elements in the hash.')
				end
	    end
	    context 'Hash elements are two or more' do
	      context 'Indeces are not specified' do
	        it 'show you HashExtensionsError: please specify two Hash indices.' do
	          expect{{aaa: 0, bbb: 1, ccc: 2, ddd: 3}.swap}.to raise_error(Hash::HashExtensionsError, 'please specify two Hash indices.')
		end
	      end
	    end
		end

  end
end
