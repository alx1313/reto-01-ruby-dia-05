# setting Universe
class Universe
  @planet = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]

  attr_accessor :north, :south, :east, :west

  def get_planet(coordx, coordy)
    @planet[coordx][coordy]
  end

  def new_life(life, coordx, coordy)
    @planet[coordx][coordy] = life
  end

end

class LifeSearch
  new_universe = Universe.new

  def live_and_death(x,y)
    temporal_value = new_universe.getplanet(x,y)
    case life
    when temporal_value.zero?
      
    when temporal_value == 1

    else
      puts 'Error n03: life exceded limits'
    end
  end
  
  def case_corner_top(x,y)
    
  end 
end