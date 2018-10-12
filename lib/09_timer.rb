class Timer
  # TODO: your code goes here!
  attr_accessor :seconds
  attr_accessor :time_string

  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds % 60 #60 seconds = a minute
    seconds_s = padded(seconds) #padding seconds number 
    seconds_s = seconds.to_s
    seconds_s = "0" + seconds_s unless seconds >= 10

    minutes = ((@seconds - seconds) % 3600) / 60 #an hour  = 60 mins = 3600 secs
    minutes_s = minutes.to_s
    minutes_s = "0" + minutes_s unless minutes >= 10

    hours = (@seconds - seconds - (minutes * 60)) / 3600
    hours_s = hours.to_s
    hours_s = "0" + hours_s unless hours >= 10

    hours_s + ":" + minutes_s + ":" + seconds_s
  end

  def padded(num)
    num < 10 ? (output = "0" + num.to_s) : (output = num.to_s)
    output
  end
end
