require 'minitest/autorun'
# tugfa
class Universe
  @planettop = [1, 0, 1]
  @planetmiddle = [0, 0, 0]
  @planetdown = [1, 0, 0]
  attr_accessor :north, :south, :east, :west

  def lifeplanettop(life, top)
    @planettop[top] = life
  end

  def lifeplanetmiddle(life, middle)
    @planetmiddle[middle] = life
  end

  def lifeplanetdown(life, down)
    @planetdown[down] = life
  end

  def seeplanettop(top)
    @planettop[top]
  end

  def seeplanetmiddle(middle)
    @planetmiddle[middle]
  end

  def seeplanetdown(down)
    @planetdown[down]
  end
end
# selecionador
class Selector < MiniTest::Test
  Universe.new

  def setneighborslevel1(top)
    Universe.north = Universe.seeplanetdown(top)
    Universe.south = Universe.seeplanetmiddle(top)
    Universe.east = Universe.seeplanettop(top + 1)
    Universe.west = Universe.seeplanettop(top + 2)
  end

  def searchlevel1(cordx, cordy)
    case cordx
    when 0
      Selector.setneighborslevel1(cordy)
      puts Universe.seeplanettop(cordx)
    else
      puts 'wat r u doin m8?'
    end
  end
end

new_sel = Selector.new(0)
new_sel.searchlevel1(0, 1)
