require "minitest/spec"
require "minitest/autorun"
require "./vehicle_1.rb"

describe Vehicle do
  it "goes a mile in 1 minute" do
    Vehicle.new.go(1).must_equal 60
  end
end
