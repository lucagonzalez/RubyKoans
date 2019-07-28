# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
#def triangle(a, b, c)
#  verify(a, b, c)
#  if (equals?(a,b) && equals?(a,c))
#    if (equals?(b, c))
#      return :equilateral
#    end
#  elsif (a == b || a == c || b == c)
#    return :isosceles
#  else
#    return :scalene
#  end
#end

def triangle(first_side, second_side, third_side)

  verify(first_side, second_side, third_side)

  if (equals?(first_side,second_side))
    if (equals?(second_side, third_side))
      return :equilateral
    else
      return :isosceles
    end
  elsif (equals?(first_side,third_side) || equals?(second_side, third_side))
    return :isosceles
  else
    return :scalene
  end
end

def verify(a, b, c)
  if (a == 0 || b == 0 || c == 0)
    raise TriangleError, "A triangle can't have a side 0"
  elsif (a+b <= c || a+c <= b || c+b <= a)
    raise TriangleError, "Any two sides of a triangle should add up to more than the other two sides"
  elsif (a < 0 || b < 0 || c < 0)
    raise TriangleError, "Negative length doesn't make sense"
  end
end

def equals?(first_side, second_side)
  first_side == second_side
end



# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
