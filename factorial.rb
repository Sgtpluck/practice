 # n! = n*(n-1)*(n-2)*...*1

#iterative
def iter_factorial(number)
	multiple = number
	while number > 1
		multiple *= (number - 1)
		number -= 1
	end
	puts multiple
end

#refactored
def factorial(number)
	(1..number).inject(:*)
end

#recursive

def recur_factorial(number)
	return 1 if number == 1
	return number * recur_factorial(number-1)
end