class Triangle
  def initialize(sides)
    @sides = sides
    @uniq_sides = sides.uniq.size
  end

  def equilateral?
    @uniq_sides == 1 && valid_triangle?
  end

  def isosceles?
    @uniq_sides <= 2 && valid_triangle?
  end

  def scalene?
    @uniq_sides == 3 && valid_triangle?
  end

  def degenerate?
    @sides.min(2).sum == @sides.max && valid_triangle?
  end

  def valid_triangle?
    no_zero_sides? && triangle_inequality?
  end

  def no_zero_sides?
    @sides.all?(&:positive?)
  end

  def triangle_inequality?
    @sides.min(2).sum >= @sides.max
  end
end