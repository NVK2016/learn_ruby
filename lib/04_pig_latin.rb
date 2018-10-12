def translate(string)
  vowels = %w(a e i o u)
  result = []
  # Seperate each word from the phrase given
  words = string.split(" ")

  words.each do |word|
      #decalre constants i.e. non vowel letters 
    two_letter_constants = word[0] + word[1]
    three_letter_constants = word[0] + word[1] + word[2]
    #If a word begins with a vowel sound, add an "ay" sound to the end of the word.
    if vowels.include?(word[0])
      result.push word << "ay" #new_str = word + "ay"
    else
      #Rule 2: If a word begins with a consonant sound, move it to the end
      #add an "ay" sound to the end of the word.
      # Check for consonants
      if (!vowels.include?(word[0]) && vowels.include?(word[1]))
        #  new_str =  word[1..-1]+word[0]+"ay"
        result.push word[1..-1] << word[0] << 'ay'
      elsif (!vowels.include?(two_letter_constants) && vowels.include?(word[2]))
          #new_str = word[2..-1]+ two_letter_consonants + "ay"
            result.push word[2..-1] << two_letter_constants << 'ay'
      elsif !vowels.include?(three_letter_constants)
          #new_str = word[3..-1]+ three_letter_consonants + "ay"
          result.push word[3..-1] << three_letter_constants << 'ay'
      end
    end
  end #end loop
    #new_str
    return result.join(" ")
end
