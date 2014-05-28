class InsertSort
  def initialize(array)
    @arr_to_sort = array
  end
  
  def insert
    @arr_to_sort.each do |num|
      unless @arr_to_sort.index(num) == 0
        @arr_to_sort[0..@arr_to_sort.index(num)].each do |number_to_compare|
          if num < number_to_compare
            @arr_to_sort.delete_at(@arr_to_sort.index(num))
            @arr_to_sort.insert(@arr_to_sort.index(number_to_compare),num)
            break
          end
        end
      end
    end
  end

end