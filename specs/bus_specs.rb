require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")
#require_relative("../bus_stop.rb")

class BussTest < MiniTest::Test


  def setup
    passengers = []
    @bus = Bus.new(22, "Ocean Terminal", passengers)
  end

  def test_bus_route
    assert_equal(22, @bus.route_number)
  end

  def test_bus_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_bus_can_drive()
    assert_equal("Broom broom", @bus.drive)
  end

  def test_passengers_on_bus
    assert_equal(0, @bus.passengers_count)
  end

  def test_add_passenger
    expected = ["Jamie"]
    assert_equal(expected, @bus.add_passenger("Jamie"))
  end

#check state after calling drop_passenger NOT result (nothing returned)
  def test_drop_passenger
    @bus.add_passenger("Jamie")
    @bus.add_passenger("Steph")
    @bus.drop_passenger("Steph")
    assert_equal(["Jamie"], @bus.passengers)
  end

  def test_all_change
    @bus.add_passenger("Bob")
    @bus.add_passenger("Sybil")
    p @bus
    @bus.all_change()
    p @bus
    assert_equal([], @bus.passengers)
  end



  # Give the Bus class a new property, 'passengers'. This should be an array, which starts off empty.////
  # Add a method to the Bus class which returns how many passengers are on the bus.////
  # Add a method to the Bus class which takes in a Person and adds it to the array of passengers. The method could look something like bus.pick_up(passenger1)////
  # Add a method that drops off a passenger and removes them from the array. This could look like bus.drop_off(passenger2) ////
  # Add an 'empty' method to remove all of the passengers - this might be used when the bus reaches its destination, or if the bus breaks down. It should remove all of the passengers from the array.


end
