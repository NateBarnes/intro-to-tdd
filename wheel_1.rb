class Wheel
  attr_accessor :circumference

  def initialize diameter=20
    @circumference = (diameter*Math::PI).round
  end
end
