class Hamming
  def self.compute(s1, s2)
    len1 = s1.length
    len2 = s2.length

    raise ArgumentError, "strings must be of equal length" if len1 != len2

    return 0 if len1.zero?

    (0..len1).reduce(0) {|acc, idx| s1[idx] != s2[idx] ? acc += 1 : acc}
  end
end