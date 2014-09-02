class Tower
  def initialize(name,rings)
    @name = name
    @rings = rings
  end

  def to_s
    @name
  end

  def pop
    @rings.pop
  end

  def push(rings)
    @rings.push rings
  end

  def height
    @rings.count
  end
end

class Hanoi
  def initialize(rings)
    @left = Tower.new('left', (0..rings).to_a)
    @center = Tower.new('center',[])
    @right = Tower.new('right',[])
  end

  def move(rings,from,to,other)
    if rings == 1
      ring = from.pop
      puts "Move ring #{ring} from #{from} to #{to}" 
      to.push(ring)
    else 
      move(rings - 1, from, other, to)
      move(1, from, to, other)
      move(rings - 1, other, to, from)
    end
  end

  def solve
    move(@left.height, @left, @right, @center)
  end
end