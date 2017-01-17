require("minitest/autorun")
require("minitest/rg")

require_relative("../Fish")

class FishTest < MiniTest::Test

  def setup
     @fish1 = Fish.new("Salmon")
     @fish2 = Fish.new("Cod")
     @fish3 = Fish.new("Trout")

  end

  def test_fish_name
    assert_equal("Salmon", @fish1.name)
  end

end