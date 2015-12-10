#HW7.3 by Eric Gonzalez
#MeanSigma.rb

#Returns mean and standard deviation of numbers in array
def mean_sigma(v)
	sum = 0.0
	v.each {|num| sum = sum + num}
	mean = sum/v.length
	sum = 0.0
	v.each {|num| sum = sum + (num - mean)**2 }
	stdev = Math.sqrt(sum/(v.length-1))
	return mean, stdev
end

#Print
array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
mean,std =  mean_sigma(array)
print "Array: #{array}\n"
puts "Mean = #{mean}, Standard Deviation = #{std}"

