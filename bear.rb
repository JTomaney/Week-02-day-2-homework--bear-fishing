class Bear

  def initialize(bear_name)
    @name = bear_name
    @belly = []
  end

  attr_reader :name

  def stomach_contents
    contents = []
    for fish in @belly
      contents.push(fish.name)
    end
    return contents
  end

  def catch_fish(river, fish_name)
    for fish in river.fish_pop
      if fish.name == fish_name
        @belly.push(fish)
        river.lose_fish(fish.name)
      end
    end
  end



end
