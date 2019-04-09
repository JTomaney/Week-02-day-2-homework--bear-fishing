class Bear

  def initialize(bear_name, bear_type)
    @name = bear_name
    @type = bear_type
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

  def roar
    return "Rwaahhhr"
  end



end
