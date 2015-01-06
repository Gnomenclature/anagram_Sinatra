class Array

  define_method(:anagram) do |possibilities|
    new_array = []
     base_word = self.at(0).split(//)
     sorted_baseword = base_word.sort()


     possibilities.each() do |word|
       split_possibilities = word.split(//)
       sorted_possibilities = split_possibilities.sort()

       if sorted_possibilities == sorted_baseword
         new_array.push(word)
       end
     end
puts(new_array)
new_array

   end
 end








    #  if base_word.sort().join() == possibilities
  #  self.sort().push(new_array)




#if sorted possiblities eq. sorted base word, join and push matched possiblilities

# sort and split each possilbiity
#will match split & sorted base word
