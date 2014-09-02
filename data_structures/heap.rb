require 'pry'

class DavidaHeap
  def initialize
    @elements = []
  end

  def create_heap(numbers_to_be_heaped)
    numbers_to_be_heaped.each do |number|
      add_element(number)
    end
  end

  def peek
    @elements[0]
  end

  def add_element(item)
    @elements << item
    bubble_up(item, @elements.size - 1)
  end

  def remove_root
    root = @elements.delete_at(0)
    new_root = @elements.pop

    if @elements.count > 0
      @elements.unshift(new_root)
      bubble_down(0)
    end
    return root
  end

  def bubble_up(item, item_loc)
    parent = (item_loc - 1)/2

    while (item_loc > 0 && @elements[parent] > item)

      @elements[parent], @elements[item_loc] = @elements[item_loc], @elements[parent]
      item_loc = parent
      parent = (item_loc - 1)/2
    end
  end

  def bubble_down(item_loc)
    while item_loc < @elements.count / 2
      child1_loc = (2*item_loc + 1)
      child2_loc = (2*item_loc + 2)

      if @elements[child2_loc]
        if @elements[child1_loc] < @elements[child2_loc]
          smallest = child1_loc
        else
          smallest = child2_loc
        end
      else
        smallest = child1_loc
      end


      if @elements[item_loc] <= @elements[smallest]
        break
      end

      @elements[item_loc], @elements[smallest] = @elements[smallest], @elements[item_loc]
      item_loc = smallest
    end
  end

  def sort_it
    sorted = []     
    while @elements.count > 2
      num = remove_root
      sorted.push(num)
    end
    while @elements.count > 0
      root = @elements.delete_at(0)
      sorted.push(root)
    end
    return sorted
  end
end
