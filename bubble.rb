class BubbleSort
  def initialize(numbers_to_be_sorted)
    @numbers_to_be_sorted = numbers_to_be_sorted
    @swapped = true
  end

  def sort
    self.swap
    return @numbers_to_be_sorted
  end

  def swap
    while @swapped == true
      @swapped = false
      (@numbers_to_be_sorted.length - 1).times do |num|
        if @numbers_to_be_sorted[num] > @numbers_to_be_sorted[num+1]
          inserted_number = @numbers_to_be_sorted[num]
          @numbers_to_be_sorted.delete_at(num)
          @numbers_to_be_sorted.insert(num+1, inserted_number)
          @swapped = true
        else
          @swapped == false
        end
      end
    end
  end
end