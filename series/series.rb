class Series
  attr_reader :chars

  def initialize(str)
    @chars = str.split('')
  end

  def slices(len)
    raise ArgumentError, 'Slice length too long' if len > chars.length
    chars.each_cons(len).map(&:join)
  end
end