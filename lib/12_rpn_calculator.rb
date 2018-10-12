class RPNCalculator
  # TODO: your code goes here!
  attr_accessor :calculator

  def initialize
    @calculator = []
  end
  #assign value to the calculator array
  def push(num)
    @calculator << num
  end
  #returns value
  def value
    @value
  end
  #this method is used to add numbers
  def plus
    raise "calculator is empty" if @calculator.empty?
    @last_pushed_num = @calculator.pop    #pop: adding element in the array
    @calculator[-1] += @last_pushed_num    # store plus value using FIFO method to the last of array calculator
    @value = @calculator[-1]    #accessing the last value in the array
  end
  #this method is to used to substract numb
  def minus
    raise "calculator is empty" if @calculator.empty? #raise an error
    @last_pushed_num = @calculator.pop #pop: adding element in the array
    @calculator[-1] -= @last_pushed_num
    @value = @calculator[-1] #accessing the last value in the array
  end
  #divides  numbers
  def divide
      #raise Exception.new("calculator is empty")
      raise "calculator is empty" if @calculator.empty?
      @last_pushed_num = @calculator.pop
      @calculator[-1] = @calculator.last.to_f / @last_pushed_num
      @value = @calculator[-1]
    end
    #multiples numbers
    def times
      raise "calculator is empty" if @calculator.empty?
      @last_pushed_num = @calculator.pop.to_f
      @calculator[-1] = @calculator.last.to_f * @last_pushed_num
      @value = @calculator[-1]
  end

end
