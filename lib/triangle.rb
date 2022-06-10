class Triangle
  # write code here
  attr_writer :one, :two, :three
  def initialize(one,two,three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if valid_triangle
      if @one == @two && @two == @three
        :equilateral
      elsif @one == @two || @two == @three || @one == @three
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

  private
  def valid_triangle
    larger_than_zero = @one > 0 && @two > 0 && @three > 0
    sum_of_sides = @one+@two > @three && @one+@three > @two && @two+@three > @one
    if larger_than_zero && sum_of_sides
      true
    else
      false
    end
  end
end

