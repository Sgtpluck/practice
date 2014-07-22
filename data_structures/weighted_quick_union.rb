class WeightedQuick

  def initialize(range)
    @id = *(0...range)
    @size = Array.new(range + 1, 1)
  end

  def root(index)
    while index != @id[index]
      index = @id[index]
    end
    
    index
  end

  def connected?(node1,node2)
    root(node1) == root(node2)
  end

  def union(node1,node2)
    i = root(node1)
    j = root(node2)

    if @size[i] < @size[j]
      @id[i] = j
      @size[j] += @size[i]
    else
      @id[j] = @id[i]
      @size[i] += @size[j]
    end
  end

end