require("minitest/autorun")
require("minitest/rg")

require_relative("../Bear")
require_relative("../River")
require_relative("../Fish")

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Baloo")
    @river = River.new("Clyde", [Fish.new("cod"), Fish.new("Salmon"), Fish.new("trout")])
  end

  def test_bear_name
    assert_equal("Baloo", @bear.name )
  end

  def test_has_empty_stomach
    assert_equal(true, @bear.has_empty_stomach())
  end

  def test_catch_fish
    @bear.fish(@river)

    assert_equal(false, @bear.has_empty_stomach())
    assert_equal(2, @river.fish_count())

  end

end
