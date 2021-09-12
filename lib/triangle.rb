# lib/triangle.rb

class Triangle
  # write code here
  attr_reader :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
      @length_one = length_one
      @length_two = length_two
      @length_three = length_three
  end

  class TriangleError < StandardError
  end

  def kind
    if length_one <= 0 || length_two <= 0 || length_three <= 0
      begin
        raise TriangleError
      end
    elsif length_one + length_two <= length_three || length_one + length_three <= length_two || length_three + length_two <= length_one
      begin
        raise TriangleError
      end
    elsif length_one == length_two && length_two == length_three
      :equilateral
    elsif length_one == length_two || length_two == length_three || length_one == length_three 
      :isosceles
    elsif length_one != length_two && length_two != length_three && length_one != length_three 
      :scalene
    else
      #error message goes here
      begin
        raise TriangleError
      end
    end
  end

end
