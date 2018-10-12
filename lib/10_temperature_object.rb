class Temperature
  # TODO: your code goes here!

  # Initialize & process hash to process F and C to be used by other methods
  def initialize(hash = {})
    if hash.include?(:f)
      @f_temp = hash[:f]
      @c_temp = ftoc(hash[:f])
    elsif hash.include?(:c)
      @c_temp = hash[:c]
      @f_temp = ctof(hash[:c])
    end
  end

  #Exercise ONe - solution
  #converts fahrenheit_to_celsius
  def ftoc(fahrenheit_degree)
    celsius = (fahrenheit_degree - 32) * 5 / 9
    celsius
  end

  #converts fahrenheit_to_celsius
  def ctof(celsius_degree)
    fahrenheit = (celsius_degree * 9.0 / 5.0) + 32
    fahrenheit #dont round the farhenit
  end
end
# Create Celsius and Fahrenheit class to inherit from temperature
class Celsius < Temperature
  def initialize(temp)
    super(:c => temp) # Inherit everything under def initialize from Temperature class
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(:f => temp)
  end
end
#super calls a parent method of the same name, with the same arguments.
#It's very useful to use for inherited classes. The super keyword can be used to
#call a method of the same name in the superclass of the class making the call.
#It passes all the arguments to parent class method
