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
# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
def triangle(first_side, second_side, third_side)
  raise TriangleError if [first_side, second_side, third_side].min <= 0
  a, b, c = [first_side, second_side, third_side].sort
  raise TriangleError if a + b <= c
  return :equilateral if (a == b) && (a == c)
  return :isosceles if (a == b) || (a == c) || (b == c)
  return :scalene if (a != b) && (a != c)
end
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/AbcSize

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
