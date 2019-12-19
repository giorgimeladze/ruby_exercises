
min_palindrom = 10001
max_palindrom = 997799
min_pattern = 100
max_pattern = 1000

class Palindromes
    attr_reader :palindromes
   
    def initialize(pattern)
        @palindromes = palindromes_from_pattern(pattern)
    end
       
    def palindromes_from_pattern(pattern)
        pattern_str = pattern.to_s
        [ pattern_str + pattern_str.reverse, pattern_str + pattern_str.reverse[1..-1] ]
            .map {|item| item.to_i}
    end

end

def exist_three_digit_multuplier?(palindrome)
    root = Math.sqrt(palindrome).to_i
    return false if root > 999
    root.downto(100) do |item|
        return false if palindrome / item > 999
        return true if palindrome % item == 0
    end
    false
end

result = nil
five_digit_palindromes = []

max_pattern.downto(min_pattern) do |pattern|
    palindrome = Palindromes.new(pattern)
    arr_palindromes = palindrome.palindromes
    if exist_three_digit_multuplier?(arr_palindromes[0])
        result = arr_palindromes[0]
        break
    end
    five_digit_palindromes << arr_palindromes[1]
end

if result.nil?
    five_digit_palindromes.each do |item|
        if exist_three_digit_multuplier?(item)
            result = item
            break
        end
    end
end

p result