#returns string as it is like an eacho
def echo(string)
  string
end
#returns uPPERCASE
def shout(string)
  string.upcase
end
#returns repeats the string by default twice if not mentioned
def repeat(string, nooftimes = 2)
  repeatStr = ""
  while nooftimes > 0
    repeatStr += string
    nooftimes -= 1
  end
  repeatStr
end
#returns the first letter
def start_of_word(word, position)
  #puts word.length
  result = [] #declare array
if position > 0 #as array inital position starts at zero
   endat = position-1
 else
 endat = position
end
  0.upto(endat) do |idx|
    result << word[idx]
    end
  result.join("")
end
#"tells us the first word of 'Hello World' is 'Hello'"
def first_word(sentence)
  words = sentence.split()
  words[0] #return the first word
end
#capitalizes every word
def titleize(sentence)
#splits it on spaces, map call iterates over each element
# & joining each element with a space (" ").
#does capitalize 'little words' at the start of a title
  #range of little words
  little_words = %w{end over and the}

  sentence.split(" ").each_with_index.map {|word, idx|
    #if the first word is little_words or word isnt little then capitalize
  if (idx.zero? || !little_words.include?(word))
    word.capitalize
  else
    word
  end
    }.join(" ")
  end
