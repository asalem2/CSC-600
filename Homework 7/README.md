# Homework: Ruby

1. Write a Ruby demo program that illustrates the use of all main Ruby conditional statements
[Reader, slide 51, and 52-74].

2. Write a Ruby demo program that illustrates the use of all main Ruby loops and iterators
[Reader, slide 51, and 76-102].

3. Write a function mean_sigma(v) that returns two values: the mean value and the standard
deviation of numbers stored in the array v [Slides 135,141 show how to return two values].

4. Write a function sort(v) that returns the sorted array v. Do not use Ruby sort methods; write
your own sort. Array v must remain unchanged. [Slide 137 shows how to return an array]

5. Create a Ruby class triangle with initalizer, accessors, and member functions for computing
the perimeter and the area of arbitrary triangles. Make also a member function test that
checks sides a, b, and c and classifies the triangle as (1) equilateral, (2) isosceles, (3)
scalene, (4) right, and (5) not a triangle. Right triangle can be either isosceles or scalene.
Compute the perimeter and area only for valid triangles (verified by test). Show examples
of the use of this class.

6. Write Ruby recognizer methods limited? and sorted? that expand the Ruby class Array.
The expression array.limited?(amin,amax) should return true if amin = a[i] = amax for all
values of i. The expression array.sorted? should return
• 0 if the array is not sorted
• +1 if a[0] = a[1] = a[2] = … (increasing sequence)
• -1 if a[0] = a[1] = a[2] = … (decreasing sequence)