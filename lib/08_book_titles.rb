class Book
  # TODO: your code goes here!
  attr_reader :title
  def title=string
    #exception words not to be capitalized specific conditions
    small_words = %w[a an and if or in the of]
    conjunctions_list = %w[and both but either for neither nor or rather so such that whether yet]
  	prepositions_list = %w[a an aboard about above abreast abroad absent across adjacent after again]

    words = string.split(" ")

    words.map do |word|
      if conjunctions_list.include?(word) || prepositions_list.include?(word) ||
      small_words.include?(word)
        word
      else
        word.capitalize!
      end
    end
    #capitalize the first word
    words[0].capitalize!
    #join the book title 
    @title = words.join(" ")
  end
end
