

  def break_into_pieces(list_to_sort)
    compare(list_to_sort.map { |num| [num] } )
  end

  def compare(array)
    array.each_with_index do |num, index|
      if index == 0 || index.even?
      end
    end
  end