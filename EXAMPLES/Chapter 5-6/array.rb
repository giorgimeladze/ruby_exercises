puts [1, 2, 3, 5.4, 2, 1.9, 0.5].inject(:+)
puts [1, 2, 3, 5.4, 2, 1.9, 0.5].inject(:*)

class Sum
    include Enumerable
    def sum(x)
        # აქ როგორ შევქმნა მასივი რომელიც x-იდან 1მდე ჩამოვა?
        array = Array.new(x) { |x| x = x-1 }
        array.inject(:+)
    end
end

sum1 = Sum.new()
puts sum1.sum(7)