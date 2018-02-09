class Anagrams

  def initialize(word1)
    @word1 = word1
  end

  def compare_words(input1, input2)
    input1 = @word1
    input2 = "bury"
    sort1 = input1.chars.sort()
    sort2 = input2.chars.sort()
    if sort1 == sort2
    "These words are anagrams"
    end
  end
end
