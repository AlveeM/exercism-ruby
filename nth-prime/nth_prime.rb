class Prime
  @primes ||= [2, 3]

  def self.nth(n)
    fail ArgumentError, "Please enter a postive integer greater than or equal to 1" if n < 1

    i = @primes.last + 2
    while @primes.length < n
      @primes << i if prime? i
      i += 2
    end

    @primes[n - 1]
  end

  private

  def self.prime?(candidate)
    sqrt = Math.sqrt(candidate)
    @primes.all? do |prime|
      return true if prime > sqrt
      candidate % prime != 0
    end
  end
end