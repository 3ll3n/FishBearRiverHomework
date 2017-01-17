require("minitest/autorun")
require("minitest/rg")

require_relative("../River")
require_relative("../Fish") 

class TestRiver < MiniTest::Test

  def setup
    
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Cod")
    @fish3 = Fish.new("Trout")

    many_fish = [@fish1, @fish2, @fish3]

    @river = River.new("Clyde", many_fish)

  end

  def test_river_name
    assert_equal("Clyde", @river.name)
  end

  def test_number_of_fish
    assert_equal(3, @river.fish_count)
  end

  def test_lose_fish
    @river.lose_fish
    assert_equal(2, @river.fish_count)
  end

end