class River

  def initialize(river_name, fish_pop = [])
    @name = river_name
    @fish_pop = fish_pop
  end

  attr_reader :name
  attr_accessor :fish_pop

  def add_fish(fish)
    @fish_pop.push(fish)
  end

  def census
    fishes = []
    for fish in @fish_pop
      fishes.push(fish.name)
    end
    return fishes
  end

  def lose_fish(fish_name)
    for fish in @fish_pop
      if fish.name == fish_name
        @fish_pop.delete(fish)
      end
    end
  end

  def spawn(new_fish_array = [])
    for new_fish in new_fish_array
      @fish_pop.push(Fish.new(new_fish))
    end
  end

end
