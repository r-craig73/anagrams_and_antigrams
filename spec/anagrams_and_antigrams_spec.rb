require('rspec')
require('pry')
require('anagrams_and_antigrams')


describe('#anagrams_and_antigrams') do
  it("checks if two words are anagrams") do
    word1 = Anagrams.new("ruby")
    expect(word1.compare_words("ruby", "bury")).to(eq("These words are anagrams"))
  end

end
