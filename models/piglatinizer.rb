#1. take in user string
#2. split user string into individual words 
#3. iterate  to convert into an array and then join
#4. check if any words in array starts_with? [aeiou]
#5 add "way" to the end of each word if it starts with a vowel
#else move first letter to end of word and add "way" to the end of each word


class PigLatinizer

   

    def piglatinize(sentence)
         get_translated = sentence.split(' ')
         word_translation = get_translated.map {|word| translated_word(word)}
         sentence_translation = word_translation.join(" ")
    end

    def translated_word(word)
        vowels = ["a", "e", "i", "o", "u"]
        constants = ('a'..'z').to_a - vowels
        if vowels.include? word[0]
                    "#{word.join}way"
        end
            end


end