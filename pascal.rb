# 1
# 11
# 121
# 1331
# 14641


def factoral(num)
  if num > 1
    1.upto(num).inject(:*)
  else
    1
  end
end

def each_entry(row,index)
  (factoral(row) / (factoral(index) * factoral(row - index)))
end

def each_row(row_input)
  row = []
  0.upto(row_input).each do |index|
    row << each_entry(row_input, index)
  end
  return row
end

def full_triangle(row_input)
  triangle = []
  0.upto(row_input).map do |row_number|
    triangle << each_row(row_number)
  end
  print_triangle(triangle)
end

def print_triangle(triangle)
  width = triangle.last.count
  triangle.collect! do |row|
    row.collect { |x| x.to_s.center(width) }.join
  end

  triangle.each { |row| puts row.center(triangle[-1].length) }
end