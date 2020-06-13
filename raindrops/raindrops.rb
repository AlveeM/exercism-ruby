class Raindrops
  def self.convert(num)
    pling = (num % 3).zero?
    plang = (num % 5).zero?
    plong = (num % 7).zero?

    return num.to_s if (!pling && !plang && !plong)

    s = ""
    s += "Pling" if pling
    s += "Plang" if plang
    s += "Plong" if plong
    return s
  end
end