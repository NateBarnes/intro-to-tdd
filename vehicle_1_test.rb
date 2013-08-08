require "minitest/spec"
require "minitest/autorun"
require "./vehicle_1.rb"

describe Vehicle do
  describe "acceptance tests" do
    it "goes a mile in 1 minute" do
      Vehicle.new.go(1).must_equal 60
    end

    it "goes 5 miles in 5 mintues" do
      Vehicle.new.go(5).must_equal 300
    end

    it "goes a mile in two minutes with a slower engine" do
      Vehicle.new(Engine.new(50.25)).go(1).must_equal 120
    end
  end

  describe "unit tests" do
    describe "computing miles per minute" do
      it "works when given good numbers" do
        Vehicle.new.miles_per_minute(1000, 100).must_equal 1.5782828282828283
      end

      it "works with negative numbers" do
        Vehicle.new.miles_per_minute(1000, -100).must_equal -1.5782828282828283
      end
    end
  end
end
