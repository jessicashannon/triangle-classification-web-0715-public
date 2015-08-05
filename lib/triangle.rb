class Triangle

attr_reader :kind
  
  def initialize(side1, side2, side3)
    sides = [side1, side2, side3]
    
    if side1 == side2 && side2 == side3
      @kind = :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      @kind = :isosceles
    else
      @kind = :scalene
    end

      if side1 <= 0 || side2 <= 0 || side3 <= 0
        raise TriangleError
      end

      if side1 + side2 <= side3
        raise TriangleError
      elsif side2 + side3 <= side1
        raise TriangleError
      elsif side3 + side1 <= side2
        raise TriangleError
      end
  end
end

TriangleError = Class.new(StandardError) 