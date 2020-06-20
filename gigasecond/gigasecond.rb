class Gigasecond
  def self.from(birth_time)
    # 1e9 is slower than 10**9
    # 10**9 is slower than 1_000_000_000
    birth_time + 10**9
  end
end

puts Gigasecond.from(Time.utc(1997, 6, 16, 0, 0, 0))
# 2028-02-23 01:46:40 UTC