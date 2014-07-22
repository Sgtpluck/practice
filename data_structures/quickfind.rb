class QuickFind
  
  def create_array(n)
    @id = []
    n.times do |i|
      @id[i] = i
    end
  end

  def connected?(p,i)
    return @id[p] == @id[i]
  end

  def union(p,q)
    pid = @id[p]
    qid = @id[q]
    @id.each_with_index do |num, index|
      @id[index] = qid if @id[index] == pid
    end
  end

end