require('rspec')
require('pry')
require('anagrams_and_antigrams')

describe(Anagrams) do
  describe('anagrams_and_antigrams') do
    it('removes empty space or punctuations from the input word') do
      word1 = Anagrams.new('be ?lo!w')
      expect(word1.compare_words('be ?lo!w', 'elbow')).to(eq('The two words are anagrams.'))
    end

    it('checks if the input word does not contains a vowel') do
      word1 = Anagrams.new('Tdv')
      expect(word1.compare_words('Tdv', 'Tea')).to(eq('Please input and actual word!'))
    end

    it('checks if two the words are anagrams') do
      word1 = Anagrams.new('ruby')
      expect(word1.compare_words('ruby', 'bury')).to(eq('The two words are anagrams.'))
    end

    it('checks if two the words have different capital/lower cases') do
      word1 = Anagrams.new('Eat')
      expect(word1.compare_words('Eat', 'Tea')).to(eq('The two words are anagrams.'))
    end

    it('checks if the input word does not match the number of letters') do
      word1 = Anagrams.new('Happy')
      expect(word1.compare_words('Happy', 'Tea')).to(eq('The two words are antigrams.'))
    end

    # it('checks if the input word does not match the number of letters and return the matching letters array') do
    #   word1 = Anagrams.new('cat')
    #   expect(word1.compare_words('cat', 'bait')).to(eq(['a', 't']))
    # end
  end
end
