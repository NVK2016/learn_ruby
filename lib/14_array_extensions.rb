#has a #sum method
def sum(arr)
  result = arr.reduce(:+) #sum numbers in the array
end

def square(arr)
  return arr if arr.empty? #if empty array
  result = []
  
    arr.each do |num|
      result << num ** 2 #returns square of a number
    end
  result
end

def square!(arr)
# .map! replacing the values of the original array
  #return arr if arr.empty? #if empty array
  arr.map! { |num|  num ** 2   }     #square value of number
end
