class Bus

  attr_reader(:route_number, :destination, :passengers)

  def initialize(route_number, destination, passengers)
    @route_number = route_number
    @destination = destination
    @passengers = passengers
  end

  def drive()
    return "Broom broom"
  end

  def passengers_count
    return @passengers.length
  end

#How do you add multiple passengers at once?
#Why didn't out @person1/2 work in tests?
  def add_passenger(name)
    @passengers.push(name)
  end

  def drop_passenger(name)
    @passengers.delete(name)
  end

  def all_change
    @passengers.clear
  end

end
