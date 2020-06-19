class Luhn
  def self.valid?(input)
    input
    .gsub(/\s/, '')
    .tap {|char| return false if char[/\A\d\d+\z/].nil?}
    .split('')
    .reverse
    .map.with_index {|digit, idx| idx.odd? ? digit.to_i * 2 : digit.to_i}
    .map {|digit| digit > 9 ? digit - 9 : digit}
    .sum % 10 == 0
  end
end