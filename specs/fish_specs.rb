require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def test_fish_has_a_name
    fish = Fish.new("Brian")
    assert_equal("Brian", fish.name)
  end




end
