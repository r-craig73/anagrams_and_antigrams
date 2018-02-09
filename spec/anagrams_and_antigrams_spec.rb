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
    word1 = Anagrams.new("Tdv")
    expect(word1.compare_words("Tdv", "Tea")).to(eq("You need to input actual words!"))
  end
  it("checks if the input word does not match the number of letters") do
    word1 = Anagrams.new("Happy")
    expect(word1.compare_words("Happy", "Tea")).to(eq("These words have no letter matches and are antigrams."))
  end
  it("checks if the input word does not contain empty space or punctuations") do
    word1 = Anagrams.new("be low")
    expect(word1.compare_words("be low", "elbow")).to(eq("These words are anagrams."))
  end

end
