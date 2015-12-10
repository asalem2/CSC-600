#HW7.4 by Eric Gonzalez
#SortArray.rb

#Sorts array
def sort(v)
	temp = v.clone
	sort = []
    while temp.length != 0
    	min = temp[0]
    	delete_index = 0
        temp.each_with_index do |num, index|
    	    if num <= min
    	        min = num
    	        delete_index = index
    	    end
    	end
    	sort.push(min)
    	temp.delete_at(delete_index)
    end
    return sort
end

#Print
array = [1,4,43,2,3,5765,34,23,76,45,54,24,87,89,34,234,464,1]
print "Initial array: #{array}\n"
print "After calling the sort method. Sort array: #{sort(array)}\n"
print "Original array is not changed: #{array}\n"