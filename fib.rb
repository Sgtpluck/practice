
#recursive
def fibo(num)
	if num < 2
		return num
	else
		return fibo(num-1) + fibo(num-2)
	end
end

#iterative

def iter_fibo(num)
	first_num = 1
	second_num = 1
	(num-2).times do
		new_num = first_num + second_num
		first_num = second_num
		second_num = new_num
	end
	return second_num
end

# 0,1,1,2,3,5,8
