class Anagrams

  def initialize(word1)
    @word1 = word1
  end

  def compare_words(input1, input2)
    input1 = @word1
    input1 = input1.gsub(/[ ';>.,!<?]/, '')
    if input1.chars.sort() == input2.chars.sort()
      "These words are anagrams."
    elsif input1.downcase().chars.sort() == input2.downcase().chars.sort()
      "These words are anagrams."
    elsif input1.scan(/[aeiouy]/).count == 0
      "You need to input actual words!"
    elsif input1.chars.sort() != input2.chars.sort()
      "These words have no letter matches and are antigrams."
    elsif input1.chars.sort() != input2.chars.sort()
      "These words aren't anagrams but 2 letter(s) match the second word: a, t."
    else
      "What's going on???"
    end
  end

end
