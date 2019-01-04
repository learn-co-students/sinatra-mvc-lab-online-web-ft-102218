class PigLatinizer
  def initialize
    
  end

  def piglatinize(phrase)
    result = ''
    phrase.split.map do |word|
      vowel_index = first_vowel_index(word)
      latin = "#{word[vowel_index, word.length]}#{word[0,vowel_index]}"
      latin += 'w' if vowel_index == 0
      latin += phrase.split[-1] == word ? 'ay' : 'ay '
      result += latin
    end
    result
  end

  def first_vowel_index(string)
    string.downcase.index(/a|e|i|o|u/)
  end
end