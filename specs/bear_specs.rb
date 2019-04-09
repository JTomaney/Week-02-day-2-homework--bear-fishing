require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

  def setup

    fish1 = Fish.new("Rimmer")
    fish2 = Fish.new("Lister")
    fish3 = Fish.new("Cat")
    fish4 = Fish.new("Kryten")
    @river = River.new("The Forth", [fish1, fish2, fish3, fish4])
    @bear = Bear.new("Beorn", "Werebear")

  end

  def test_bear_has_a_name
    assert_equal("Beorn", @bear.name)
  end

  def test_bear_has_an_empty_belly
    assert_equal([], @bear.stomach_contents)
  end

  def test_bear_can_take_fish_from_river
    @bear.catch_fish(@river, "Lister")
    assert_equal(["Rimmer", "Cat", "Kryten"], @river.census)
    assert_equal(["Lister"], @bear.stomach_contents)
  end

  def test_bear_can_roar
    assert_equal("Rwaahhhr", @bear.roar)
  end


end
