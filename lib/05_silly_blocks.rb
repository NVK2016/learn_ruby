#reverses the string returned by the default block
def reverser(&block)
  #block.call.reverse
  result = []
  #yield : Called from inside a method body, yields control to the code block
  #(if any) supplied as part of the method call. ...
  #The value of a call to yield is the value of the executed code block.
  yield.split.each{|word| result << word.reverse}
  result.join(" ")
end

#adds one to the value returned by the default block"
#yield: will allow you to call that method with a block
#of code and pass the torch
def adder(times=1)
  yield + times
end
#executes the default block 3 time
def repeater(count = 3)
  #times: This can be used with no iteration variable, as in the first example loop. 
  count.times{yield}
  #if yield.class == String
  #  ans = input == "block_was_executed"
  #end
  #if yield.class == Integer
  #  ans = 0
  #  i = 0
  #  while i < times
  #    ans += 1
  #    i += 1
  #  end
  #end
  #ans
end
