#converts fahrenheit_to_celsius
def ftoc(fahrenheit_degree)
  celsius = (fahrenheit_degree - 32) * 5 / 9
  #if celsius == celsius.to_i
   #celsius.to_i
 #else
  # celsius
 #end
  celsius
end

#converts fahrenheit_to_celsius
def ctof(celsius_degree)
  fahrenheit = (celsius_degree * 9.0 / 5.0) + 32
  fahrenheit #dont round the farhenit
end
