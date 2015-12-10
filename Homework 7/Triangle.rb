#HW7.5 by Eric Gonzalez
#Triangle.rb

class Triangle
    #Getters and setters
    attr_accessor :a, :b, :c
    
    def initialize(a,b,c)
        @a,@b,@c = a,b,c
    end

    #Test function classifies the trinagles as (1)equilateral, (2)isosceles, #(3)scalene, (4)right, and (5)not a triangle.
    def test
        if @a.to_i != 0 && @b.to_i != 0 && @c.to_i != 0
            if  @a == @b && @a == @c
                return 1
            elsif @a**2 == @b**2 + @c**2 || @b**2 == @a**2 + @c**2 || @c**2 == @b**2 + @a**2
                return 4
            elsif (@a == @b && @a != @c) || (@b == @c && @a != @c) || (@a == @c && @b != @c)
                return 2
            elsif @a != @b && @a != @c && @c != @b
                return 3
            end
        else
            return 5
        end
    end

    def perimiter
        return @a+@b+@c if self.test != 5
        
    end

    def area
        p = self.perimiter/2
        return Math.sqrt(p*(p-@a)*(p-@b)*(p-@c)) if self.test != 5
    end
    
    def kind
        value = self.test
        if value ==  1
            return "is an equilateral triangle"
        elsif value == 2
            return "is an isosceles triangle"
        elsif value == 3
            return "is a scalene triangle"
        elsif value == 4
            return "is a right triangle"
        elsif value == 5
            return "is not a triangle"
        end
    end

end

#Print
t1 = Triangle.new(4,4,4)
print "t1: a = #{t1.a}, b = #{t1.b}, c = #{t1.c}, t1 #{t1.kind}\n"
puts "perimiter: #{t1.perimiter}, area: #{t1.area}"
t2 = Triangle.new(5,3,5)
print "t2: a = #{t2.a}, b = #{t2.b}, c = #{t2.c}, t2 #{t2.kind}\n"
puts "perimiter: #{t2.perimiter}, area: #{t2.area}"
t3 = Triangle.new(1,2,3)
print "t3: a = #{t3.a}, b = #{t3.b}, c = #{t3.c}, t3 #{t3.kind}\n"
puts "perimiter: #{t3.perimiter}, area: #{t3.area}"
t4 = Triangle.new(3,4,5)
print "t4: a = #{t4.a}, b = #{t4.b}, c = #{t4.c}, t4 #{t4.kind}\n"
puts "perimiter: #{t4.perimiter}, area: #{t4.area}"
t5 = Triangle.new("g",4,"C")
print "t5: a = #{t5.a}, b = #{t5.b}, c = #{t5.c}, t5 #{t5.kind}\n"