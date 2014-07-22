
  def quicksort(array)
    return array if array.length <= 1
    pivot = find_pivot(array)
    less = []
    greater = []
    array.each do |num|
      if num > pivot
        greater.push num
      elsif num < pivot
        less.push num
      end
    end
    return quicksort(less).push(pivot).concat(quicksort(greater))
  end

  def find_pivot(array)
    (array[0] + array[-1] + array[array.length/2]) / 3
  end

  puts a = (0..10000).to_a.shuffle
  puts quicksort(a)