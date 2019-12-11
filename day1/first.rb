class Student
  def initialize(name, last_name, age, id_number)
    @name = name
    @last_name = last_name
    @age = age
    @id_number = id_number
  end

  #4
  def age_is_odd
    if @age % 2 != 0
      return true
    else
      return false
    end
  end

end

#3
student1 = Student.new("gio","abc",12, 34563)
puts student1.age_is_odd
student2 = Student.new("levan", "gdal", 23, 65341)
student3 = Student.new("luka", "plaz", 15, 34581)

students = [student1, student2, student3]

#6,5
array_of_ints = [1, 3, 5, 12, 6, 2, 7]
sum = 0
i = 0
while i < array_of_ints.length
  sum += array_of_ints[i]
  i += 1
end
puts "#{sum}"

#7
i = 0
four_stars = "* * * *"
three_stars = " * * * "
while i < 4
    puts four_stars if i % 2 == 0
    puts three_stars if i % 2 == 1
    i += 1
end

#8
i = 0
star = "*"
space = " "
while i < 4
    j = i % 4
    j.times { print space }
    print star + "\n"
    i += 1
end
i = 3
while i >= 0
    j = i % 4
    j.times { print space }
    print star + "\n"
    i -= 1
end
i = 0
while i < 4
    j = i % 4
    j.times { print space }
    print star + "\n"
    i += 1
end
   
#9
i = 1
while i <= 50
  if i % 2 == 0
    square = i**2
    print "#{square}, "
  end
  i += 1
end
print "\n"

#11
def array_2_m(integers)
  largest = 0
  second_largest = 0

  if integers.length == 0
    return 0
  end

  if integers.length == 1
    return integers[0]
  end

  i = 0

  while i < integers.length
    if largest < integers[i]
      largest = integers[i]
    end
    i += 1
  end

  i = 0
  while i < integers.length
    if second_largest < integers[i] and largest != integers[i]
      second_largest = integers[i]
    end
    i += 1
  end

  return largest + second_largest
end

array = [1,2,4,5,24,8,3,2,9]
puts "#{array_2_m(array)}"

#10
def array_sum(integers)
  if integers.length == 0
    return 0
  end

  i = 0
  sum = 0
  while i < integers.length
    sum += integers[i]
    i += 1
  end

  return sum
end

#12
def array_sum_to_n(integers, n)
  sum = array_sum(integers)

  if sum == n
    return true
  else
    return false
  end
end

array = [2, 45, 2, 5, 1, 7, 0]
puts "#{array_sum_to_n(array,62)}"

#13
def hash_has_key(hash, key)
  hash.key?(key)
end

hash = {
    "1" => "a",
    "2" => "b",
    "3" => "c"
}

puts hash_has_key(hash, "1")

#14
hash = {
  :first => "1",
  :second => "2",
  :third => "3",
  :fourth => "4",
  :five => "5"
}

hash.each do |key, value|
  hash[key] = hash[key].to_i
  print hash[key] + 23
  print " "
end


#15
def array_to_hash(array)
  hash = {}
  array.each_with_index do |value, index|
    hash[index] = value
  end
end