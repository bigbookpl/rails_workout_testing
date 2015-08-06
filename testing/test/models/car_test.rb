require 'test_helper'

class CarTest < ActiveSupport::TestCase

  test "should save car without given speed" do
    car = Car.new
    car.name = "Ford"
    car.age  = 10
    assert car.save
  end

  test "shouldn't save car without name" do
    car = Car.new
    car.speed = 1000
    assert_not car.save, "Saved the car without a name"
  end

  test "shouldn't save car without age" do
    car = Car.new
    car.name = "Mazda"
    assert_not car.save, "Saved the car without age"
  end

  # test "should report error" do
  #   # some_undefined_variable is not defined elsewhere in the test case
  #   some_undefined_variable
  #   assert true
  # end
end
