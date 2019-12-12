def palindrome?(number)
	string_num = number.to_s
	for i in 0...(string_num.length / 2)
		return false if string_num[i] != string_num[-(i+1)]
	end
	true
end


largest_product = 999 * 999
largest_palindrome = 0
while largest_product > 10000
	divisible = false
	
	if palindrome?(largest_product)
		largest_palindrome = largest_product
		if largest_palindrome > 100000
			i = 110
			j = Math.sqrt(largest_palindrome)
			while i < j
				if largest_palindrome % i == 0 and largest_palindrome / i <= 999
					divisible = true
					break
				else
					i += 11
				end
			end
		else
			i = 101
			j = Math.sqrt(largest_product).to_i
			while i < j
				if largest_palindrome % i == 0 and largest_palindrome / i <= 999
					divisible = true
					break
				else
					i += 1
				end
			end
		end
	end

	break if divisible
	largest_product -= 1
end

puts largest_palindrome




