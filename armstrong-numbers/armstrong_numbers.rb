class ArmstrongNumbers
  def self.include?(num)
    num_digits_arr = num.digits
    num_len = num_digits_arr.length
    num_digits_arr.sum { |digit| digit ** num_len} == num
  end
end