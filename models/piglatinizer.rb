class PigLatinizer
    # all your ruby methods will be in here to PLatinize

    attr_accessor :pl #:one

    #split into an array of strings, guillotine each string, then join back together

    def piglatinize(pl)
        # @one = one
        #ebinding.pry
        latinized_arr = pl.split().map do |one|
            #binding.pry
            guillotine(one)
        end
        latinized_arr.join(" ")
    end
    
    def guillotine(one)
        if vowel_start?(one)
            one + "way"
        else
            new_one = consonant_shift(one)
            if vowel_start?(new_one)
                new_one + "ay"
            else
                guillotine(new_one)
            end
        end
    end
    
    def vowel_start?(one)
        one[0].start_with?(/[aeiouAEIOU]/)
    end
    
    def consonant_shift(one)
        # binding.pry
        one += one[0]
        one = one[1..-1]
    end
end
    
    # def try_again(two)
    #     consonant_shift(one)
    #         if vowel_start?(one)
    #             one + "ay"
    #         else
    #             try_again(one)
    #         end        
    # end
    
    # def pigmy_in_results
    #     results_array << @letters.join
    # end
    
#     def word_count #["Ryan Michael Bollettino"] #=> 3
#         pl.split.count  
#     end
    
#     @original.pl.each.to_a do 
#     @letters = pl.split('')
#     @letters.guillotine
#     i=+1 until i < 

# @original.pl.map do |x|
#     @letters = x.split('')
# end 
# #=> [["R", "y", "a", "n"], ["M", "i", "c", "h", "a", "e", "l"], ["B", "o", "l", "l", "e", "t", "t", "i", "n", "o"]]


#     # def separate
#     #     arr1 = pl.split()
#     # end

#     # def letters(@arr1)     #["R", "y", "a", "n"]
#     #     one_word.split('')
#     #     pl.split[0].split('')
#     # end
