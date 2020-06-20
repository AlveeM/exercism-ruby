class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    nums_mark_arr = [nil, nil, *2..@max]
    (2..Math.sqrt(@max)).each do |num|
      if nums_mark_arr[num]
        (num**2..@max).step(num) { |multiple| nums_mark_arr[multiple] = nil }
      end
    end

    nums_mark_arr.compact!
  end
end