class Engine
  attr_accessor :rpm

  def initialize rpm=100.5
    @rpm = rpm*10
  end
end
