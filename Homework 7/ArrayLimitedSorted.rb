#HW7.6 by Eric Gonzalez
#ArrayLimitedSorted

class Array
    #Checks all values in array meet amin <= num and num <= amax requirement
	def limited?(amin,amax)
		self.each do |num|
			return false unless amin <= num && num <= amax 
		end
		return true
	end

	#Checks if array is sorted either increasing or decreasing.
	def sorted?
	    self.each_with_index do |num, index|
	        break unless num <= self[index+1] if index != self.length - 1
	        return "+1" if index == self.length - 1
	    end
	    
	    self.each_with_index do |num, index|
	        break unless num >= self[index+1] if index != self.length - 1
	        return "-1" if index == self.length - 1
	    end
	    
	    return 0
	end
end

#Print
array = [1,2,3,4,5]
puts "array: #{array} - array.limited?(0,10): #{array.limited?(0,10)},  array.sorted?: #{array.sorted?}"
array = [10,7,5,3,1]
puts "array: #{array} - array.limited?(5,11): #{array.limited?(5,11)},  array.sorted?: #{array.sorted?}"
array = [8, 3, 4 ,10, 5]
puts "array: #{array} - array.limited?(0,5): #{array.limited?(0,15)},  array.sorted?: #{array.sorted?}"
