require 'time'

class Counter
  attr_reader :count, :time

  def initialize
    @count = 0
  end

  def increment
    @count += 1
    set_time
  end

  def decrement
    @count -=1
    set_time
  end

  def self.instance
    @counter ||= Counter.new
  end

  def reset
    @count = 0
  end

  private

  def set_time
    @time = Time.now.strftime("%H:%M:%S")
  end
end
