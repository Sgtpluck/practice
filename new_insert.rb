# given an array of numbers whose count is greater than 1
# for each number in an array
# unless it is the 0th element
# check the element right before it to see if it is smaller than that element
  # if it is, check the next element to see if it is smaller than that element
  # if it's not, break
# repeat for all elements in the array

class Array
  def insertionsort!
    1.upto(length - 1) do |index|
      value = delete_at(index)
      prev = (index - 1)
      prev -= 1 while value < self[prev] && prev >= 0
      insert(prev + 1, value)
    end
    puts self.inspect
  end
end

(0..10000).to_a.shuffle.insertionsort!