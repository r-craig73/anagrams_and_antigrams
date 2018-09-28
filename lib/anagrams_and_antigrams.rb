# Anagrams class and compare_words method
class Anagrams
  def initialize(word1)
    @word1 = word1
  end

  def compare_words(input1, input2)
    input1 = @word1
    input1 = input1.gsub(/[ ';>.,!<?]/, '')
    if input1.chars.sort == input2.chars.sort
      'The two words are anagrams.'
    elsif input1.downcase.chars.sort == input2.downcase.chars.sort
      'The two words are anagrams.'
    elsif input1.scan(/[aeiouy]/).count.zero?
      'Please input and actual word!'
    elsif input1.chars.sort != input2.chars.sort
      'The two words are antigrams.'
    # elsif input1.chars.sort != input2.chars.sort
    #   '#{matching_letters}'
    else
      'Something is wrong :-( '
    end
  end
end
