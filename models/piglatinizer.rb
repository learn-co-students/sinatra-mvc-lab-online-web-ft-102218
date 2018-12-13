require 'pry'
class PigLatinizer
  def piglatinize(text)
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    text.split(" ").map do |word|
      found = false
      word.split("")
      if vowels.include?(word[0]) # First character is a vowel
        word + "way"
      elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) # First two characters are not vowels
        word.split("").map do |letter|
          if vowels.include?(letter) && found == false
            found = true
            word.split("").rotate(word.index(letter)).join("") + "ay"
          end
        end
      elsif !vowels.include?(word[0]) && vowels.include?(word[1]) # Start with consonant followed by vowel
        word.split("").rotate(1).join("") + "ay"
      end
    end.flatten.compact.join(" ")
  end
end