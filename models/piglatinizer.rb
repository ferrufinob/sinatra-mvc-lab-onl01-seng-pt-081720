#1. take in user string
#2. split user string into individual words 
#3. iterate  to convert into an array and then join
#4. check if any words in array starts_with? [aeiou]
#5 add "ay" to the end of each word if it starts with a vowel
#else move first letter to end of word and add "way" to the end of each word
#keep in my if it stars with 2-3 constants
#keep in mind capital vowels and consonants
#translated pig latin can only start with a vowel, remove if not and add to end


class PigLatinizer
  
#need a way to show results

    def piglatinize(sentence)
         get_translated = sentence.split(' ')
         word_translation = get_translated.map {|word| translated_word(word)}
         sentence_translation = word_translation.join(" ")
    end

    def translated_word(word)
        #can only pass if i include capitals letters
        #convert to string
        alpha = ('a'..'z').to_a + ('A'..'Z').to_a
        vowels = %w[a e i o u] + %w[A E I O U]
        consonants = alpha - vowels
        #add to single letter
        if word.length < 2
         word + "way" 
         #if word starts with a vowel
         elsif vowels.include?(word[0])
              word + "way"
              #will move 3 constants to the end 
         elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
             word[3..-1] + word[0..2] + 'ay'
             #if consonant if first two letters
         elsif consonants.include?(word[0]) && consonants.include?(word[1])
             word[2..-1] + word[0..1] + 'ay'
         else
            #if consonant is only the first letter
            word[1..-1] + word[0] + 'ay'
         end
     end 
    
    


end
