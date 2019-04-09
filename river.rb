class River

  def initialize(river_name, fish_pop = [])
    @name = river_name
    @fish_pop = fish_pop
  end

  attr_reader :name

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

end
