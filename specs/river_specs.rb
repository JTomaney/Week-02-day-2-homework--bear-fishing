require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    fish1 = Fish.new("Rimmer")
    fish2 = Fish.new("Lister")
    @fish3 = Fish.new("Cat")
    @fish4 = Fish.new("Kryten")
    @river = River.new("The Forth", [fish1, fish2, @fish3])
  end

  def test_river_has_a_name
    river = River.new("The Forth")
    assert_equal("The Forth", river.name)
  end

  def test_river_contains_fish
    assert_equal(["Rimmer", "Lister", "Cat"], @river.census)
  end

  def test_river_can_add_fish
    @river.add_fish(@fish4)
    assert_equal(["Rimmer", "Lister", "Cat", "Kryten"], @river.census)
  end

  def test_river_can_lose_fish_by_name
    @river.lose_fish("Cat")
    assert_equal(["Rimmer", "Lister"], @river.census)
  end

  def test_river_can_spawn_fish
    @river.spawn(["Kochansky", "Holly"])
    assert_equal(["Rimmer", "Lister", "Cat", "Kochansky", "Holly"], @river.census)
  end

end
