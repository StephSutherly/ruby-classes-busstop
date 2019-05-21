require("minitest/autorun")
require("minitest/rg")
# require_relative("../bus.rb")
require_relative("../person.rb")
#require_relative("../bus_stop.rb")

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("Steph", 26)
    @person2 = Person.new("Jamie", 46)
  end

  def test_person_name
    assert_equal("Jamie", @person2.name)
  end

  def test_person_has_age
    assert_equal(26, @person1.age)
  end







end
