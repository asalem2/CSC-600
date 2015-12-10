#HW7.2 by Eric Gonzalez
#LoopsAndIterators.rb

#loop-do
print "loop-do: "
x = 0
loop do
	if x == 3
		break
	end
	print "#{x = x + 1} "
end
puts

#while-do
print "while-do: "
x = 0
while x < 7 do
	print "#{x} "
	x = x + 2
end
puts

#until-do 
print "until-do: "
until x == 0 do
	print "#{x} "
	x = x - 1
end
puts

#while modifier
print "while modifier: "
x = 0
print "#{x = x + 1} " while x < 5
puts

#unto modifier
print "unto modifier: "
array = [1,2,3]
print array.pop.to_s + " " until array.empty?
puts 

#for-in
print "for-in: "
hash = {:Charmander => "fire", :Squirtle => "water", :Bulbasaur => "grass"}
for key,var in hash
	print "#{key} => #{var}, "
end
puts

#upto
print "upto: "
1.upto(3){|counter| print "#{counter} "}
puts

#downto
print "downto: "
5.downto(1){|counter| print "#{counter} "}
puts

#times 
print "times: "
3.times{print "Scary-Mary "}
puts

#each
print "each: "
array = [1,2,3]
array.each{|number| print "#{number} "}
puts

#map
print "map: "
sum = 0
(1..5).map{|y| print "#{(y*y)} "}
puts

#step
print "step: "
1.step(2,0.2) do |y| print "#{y} " end
puts

#collect
print "collect: "
squares = [1,2,3].collect{|y| y**2}
print squares
puts

#select
print "select: "
odds = (1..5).select{|y| y%2 == 1}
print odds
puts

#reject
print "reject: "
evens = (1..5).reject{|y| y%2 == 1}
print evens
puts