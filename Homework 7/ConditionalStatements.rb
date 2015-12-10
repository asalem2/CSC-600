#HW7.1 by Eric Gonzalez
#ConditionalStatements.rb

#if statement
print "if statement: "
truck = "red"
if truck == "red"
	puts "truck is red"
end

#if else statement
print "if-else statement: "
major = "computer science"
if major == "computer science"
	puts "Cool major!"
else
	puts "Lame major."
end

#if else statement
print "if-elsif-else statement: "
string = "This is a string"
puts "string variable is of length #{string.length}"
if string.length < 10
	puts "string variable has a length less than ten"
elsif string.length > 10 && string.length < 20
	puts "string variable has a length greater than ten but less than 20"
else
	puts "string variable has a length greater than 20"
end

#if modifier
print "if modifier: "
puts "length is not 0" if string.length!= 0

#unless statement
print "unless statement: "
x = 2
y = 3
unless x == y
	puts "x is not equal to y"
end 

#unless-else statement
print "unless-else statement: "
length = 10
unless length % 2 == 0
	puts "#{length} is odd"
else
	puts "#{length} is even"
end

#unless modifier
print "unless modifier: "
length = 0
puts "length is 0" unless length != 0

#case statement
print "case statement: "
car = "Ford"
car_response = case car
   when "Toyota" then "Lame"
   when "Nissan" then "Okay"
   when "Ford" then "Awesome"
   else "Unknown Brand"
end
puts "Your car is #{car_response}"

#ternary operator
print "ternary operator: "
x = 2
y = 3
str = x != y ? "x doesnt equal y" : "x equals y" 
puts str