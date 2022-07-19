require 'pry'

class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(a, b, c)
    @side1 = a
    @side2 = b
    @side3 = c
  end

  def kind()
    # binding.pry
    
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    elsif @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side3 + @side1 <= @side2
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3 && @side3 == @side1
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1
      :isosceles
    elsif @side1 != @side2 && @side2 != @side3 && @side3 != @side1
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end