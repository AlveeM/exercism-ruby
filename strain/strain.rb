class Array
  def keep(&block)
    return enum_for(:keep) unless block_given?

    result = []
    for i in (0...length)
      result << self[i] if block.call(self[i])
    end
    result
  end

  def discard(&block)
    return enum_for(:discard) unless block_given?

    result = []
    for i in (0...length)
      result << self[i] if !block.call(self[i])
    end
    result
  end
end