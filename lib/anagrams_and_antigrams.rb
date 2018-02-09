class Anagrams

  def initialize(word1)
    @word1 = word1
  end

  def compare_words(input1, input2)
    input1 = @word1
    # sort1 = input1.downcase().chars.sort()
    # sort2 = input2.downcase().chars.sort()
    if input1.chars.sort() == input2.chars.sort()
      "These words are anagrams"
    elsif input1.downcase().chars.sort() == input2.downcase().chars.sort()
      "These words are anagrams"
    elsif input1.scan(/[aeiouy]/).count == 0
      "You need to input actual words!"
    elsif input1.chars.sort() != input2.chars.sort()
      "These words have no letter matches and are antigrams."
    else
      "What's going on?"
    end
  end

end
