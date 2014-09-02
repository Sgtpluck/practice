class Node
  attr_accessor :next_node, :data

  def initialize(data, next_node)
    @data = data
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def printAll
    temp = @head
    while temp.next_node != nil
      puts temp.data
      temp = temp.next_node
    end
    puts temp.data
  end

  def add(data)
    temp = Node.new(data,@head)
    @head = temp
  end

  def get(i)
    temp = @head
    counter = 1
    while counter < i
      temp = temp.next_node
      counter += 1
    end
    return temp.data
  end

end

list = LinkedList.new
list.add(234)
list.add("steve")
list.add("blake")

list.printAll

list.get(2)
