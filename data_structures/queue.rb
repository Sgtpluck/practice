class Queue
	def initialize
		@array = Array.new
	end

	def enqueue item
		@array.push(item)
	end

	def dequeue
		@array.shift
	end

	def size
		@array.length
	end

	def clear
		@array = Array.new
	end

	def peek
		return @array.first
	end

	def last
		return @array.last
	end

end
