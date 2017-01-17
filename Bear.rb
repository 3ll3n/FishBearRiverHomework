class Bear

  attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = Array.new()
  end

  def has_empty_stomach
    return @stomach.length == 0
  end

  def fish(river)
    fish = river.lose_fish()
    @stomach.push(fish)
  end

end