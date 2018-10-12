#`add` takes two parameters and adds them
def add(number1, number2)
  addition = number1 + number2
end
#`subtract` takes two parameters and subtracts the second from the first
def subtract(number1, number2)
  substraction = number2 - number1
  substraction.abs #return absolute value
end
#`sum` takes an *array* of parameters and adds them all together
def sum(arr)
  #arr.reduce(:+)
  sum = 0
  arr.each do |element|   #loop through each element
    sum += element #add values of an aaray
  end
  sum
end
#"multiplies two numbers"
def multiply(number1, number2)
  number1 * number2
end
#"multiplies several numbers"
def multiply_several(arr)
  #arr.reduce(:*)
  result_set = 0
  arr.each do |element|   #loop through each element
    result_set *= element #multiply values of an aaray
  end
  result_set
end
#it "raises one number to the power of another number"
def power(number1,number2)
  expo = number1 ** number2 #power i=raise to or exponent
end
#computes the factorial i.e. (n * n-1)
def factorial(number)
  result = 1 #if number == 0
  if ( number < 0 )
    #negative numbers
    result =nil
  end
  while number  > 0
    result = result * number
  #  puts result 
    number -= 1
  end
  result
end
