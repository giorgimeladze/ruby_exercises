#1
def is_palindrome(number)
	string_num = number.to_s
	for i in 0..(string_num.length / 2)
		return false if string_num[i] != string_num[-(i+1)]
	end
	return true
end

j = 999
k = 999
sum = 0
while j >= 100
	k = 999
	while k >= 100
		if is_palindrome(j*k)
			sum = j * k
			puts sum
			break
		end
		k -= 1
	end
	break if sum > 0
	j -= 1
end


#2
smallest_divisor = 1
primes = []

def is_prime(num)
  Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
  true
end

for i in 2..20
	primes.push(i) if is_prime(i)
end

for i in primes
	k = i
	while k * i  < 20
		k *= i
	end
	smallest_divisor *= k
end


puts smallest_divisor

#3
def has_int_square(x)
  (Math.sqrt(x) % 1).zero?
end

a = 1
b = 2
c = 0
for i in 2..1000
	a = i
	for j in i+1..1000
		b = j
		c = 1000 - a - b
		if a*a + b*b == c*c 
			puts a*b*c
			break
		end
	end
	break if a*a + b*b == c*c 
end




