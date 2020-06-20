class Numeric
  def to_roman
    if self < 0
      fail RangeError "Romans did not use negative numbers"
    end

    x = self
    roman_digits = [[1, 'I'], [4, 'IV'], [5, 'V'], [9, 'IX'],
                    [10, 'X'], [40, 'XL'], [50, 'L'], [90, 'XC'],
                    [100, 'C'], [400, 'CD'], [500, 'D'],
                    [900, 'CM'], [1000, 'M']].reverse

    roman_digits.reduce('') do |acc, (decimal, roman)|
      factor, x = x.divmod(decimal)
      acc <<  roman * factor
    end
  end
end