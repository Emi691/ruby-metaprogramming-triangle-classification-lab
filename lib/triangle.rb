class Triangle
  attr_reader :side_a, :side_b, :side_c
  
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def valid
    if self.side_a + self.side_b > self.side_c && self.side_c + self.side_b > self.side_a && self.side_a + self.side_c > self.side_b && self.side_a > 0 && self.side_b > 0 && self.side_c > 0
      true
    else
      false
    end
  end

  def kind
    if self.valid == true
      if self.side_a == self.side_b && self.side_b == self.side_c
        :equilateral
      elsif self.side_a == self.side_b || self.side_b == self.side_c || self.side_c == self.side_a
        :isosceles
      else self.side_a != self.side_b && self.side_b != self.side_c
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
