class PrimeFactors
  def self.of(n)
    return [] if n == 1
    prime_factor = (2..n).find { |prime| n % prime == 0}
    [prime_factor] + self.of(n / prime_factor)
  end
end