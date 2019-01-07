class PigLatinizer
    def piglatinize(user_phrase)
        @user_phrase = user_phrase.split(" ")

        @user_phrase.map { |word| 
            if word.downcase.start_with?('a','e','i','o','u')
                word << 'way'
            else
                consonant = word.split(/[aeiou]/).first
                word.sub!(consonant, '')
                word << consonant + 'ay'
            end
        }

        @user_phrase.join(" ")
    end
end