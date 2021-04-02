
require 'pry'

class PigLatinizer 

    def piglatinize(words)
         latin = words.split.map do |word|
           if word.start_with?("a","e","i","o","u","A","E","I","O","U")
                word+"way"   
            elsif word.start_with?("pr","pl","th","wh","sk")
                first_two_letters = word[0] + word[1]
             #   binding.pry
                word.slice!(0)
                word.slice!(0)
                word+first_two_letters+"ay"
            elsif word.start_with?("spr","Str")
                first_three_letters = word[0] + word[1] + word[2]
                #   binding.pry
                   word.slice!(0)
                   word.slice!(0)
                   word.slice!(0)
                   word+first_three_letters+"ay"
            else
            first_letter = word.slice!(0)
            word+first_letter+"ay" 
            end 
        end
        #binding.pry
        latin.join(" ")
    end
end

