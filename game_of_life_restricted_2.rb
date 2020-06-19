require 'minitest/autorun'
# New universe
class Universe
  @planettop = [0, 0, 0, 0]
  @planetmiddletop = [0, 0, 0, 0]
  @planetmiddledown = [0, 0, 0, 0]
  @planetdown = [0, 0, 0, 0]

  attr_accessor :north, :south, :west, :east

  def planettop(coord)
    @planettop[coord] 
  end

  def planetmiddletop(coord)
    @planetmiddletop[coord]
  end

  def planetmiddledown(coord)
    @planetmiddledown[coord]
  end

  def planetdown(coord)
    @planetdown[coord]
  end

  def planettopedit(life, coord)
    @planettop[coord] = life
  end

  def planetmiddletopedit(life, coord)
    @planetmiddletop[coord] = life
  end

  def planetmiddledownedit(life, coord)
    @planetmiddledown[coord] = life
  end

  def planetdownedit(life, coord)
    @planetdown[coord] = life
  end
end
# get life
class Life
  Universe.new
  def life_detector(life, coordx, coordy)
    case get_coords
    when coordx.zero?
      Universe.planettop(life, coordy)
    when coordx == 1
      Universe.planetmiddletop(life, coordy)
    when coordx == 2
      Universe.planetmiddledown(life, coordy)
    when coordx == 3
      Universe.planetdown(life, coordy)
    else
      puts 'error: exceeded limit of planet'
    end
  end

  def life_print(coordx, coordy)
    case get_coords
    when coordx.zero?
      puts Universe.planettop(coordy)
    when coordx == 1
      puts Universe.planetmiddletop(coordy)
    when coordx == 2
      puts Universe.planetmiddledown(coordy)
    when coordx == 3
      puts Universe.planetdown(coordy)
    else
      puts 'error: exceeded limit of planet'
    end
  end
end
# Nice rules
class Rules < Minitest::Test
  Life.new
  def sort_value
    Life.life_detector(1, 0, 0)
    Life.life_detector(0, 0, 1)
  end

  def print_values
    result = Life.life_print(0, 0)
    assert_equal 1, result
  end
end
