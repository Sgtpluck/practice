def mergesort(array)
  return array if array.size <= 1
  middle = array.size/2
  left = array[0,middle]
  right = array[middle, array.size-middle]
  merge(mergesort(left), mergesort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end
