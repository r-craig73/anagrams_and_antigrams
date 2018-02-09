require('rspec')
require('pry')
require('anagrams_and_antigrams')

describe('#anagrams_and_antigrams') do
  it("checks if two the words are anagrams") do
    word1 = Anagrams.new("ruby")
    expect(word1.compare_words("ruby", "bury")).to(eq("These words are anagrams"))
  end
  it("checks if two the words have different cases") do
    word1 = Anagrams.new("Eat")
    expect(word1.compare_words("Eat", "Tea")).to(eq("These words are anagrams"))
  end
  it("checks if the input word does not contains a vowel") do
    word1 = Anagrams.new("Trd")
    expect(word1.compare_words("Trd", "Tea")).to(eq("You need to input actual words!"))
  end

end
