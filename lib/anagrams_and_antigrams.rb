class Anagrams

  def initialize(word1)
    @word1 = word1
  end

  def compare_words(input1, input2)
    input1 = @word1
    sort1 = input1.downcase().chars.sort()
    sort2 = input2.downcase().chars.sort()
    if sort1 == sort2
      "These words are anagrams"
    elsif (sort1 != "a") | (sort1 != "e")
      "You need to input actual words!"
    elsif (sort1 != "i") | (sort1 != "o")
      "You need to input actual words!"
    elsif (sort1 != "u") | (sort1 != "y")
      "You need to input actual words!"
    else
      "These words are not anagrams"
    end
  end

end
