require "./engine_1.rb"
require "./wheel_1.rb"

class Vehicle
  attr_accessor :engine, :wheel

  def initialize engine=Engine.new, wheel=Wheel.new
    @engine = engine
    @wheel = wheel
  end

  def go miles=1
    compute_time(miles).round
  end

  def miles_per_minute rpm, circumference
    (rpm * circumference) / inches_in_mile
  end

  def compute_time miles
    miles / miles_per_minute(engine.rpm, wheel.circumference) * 60
  end

  private
  def inches_in_mile
    63360.0
  end
end
