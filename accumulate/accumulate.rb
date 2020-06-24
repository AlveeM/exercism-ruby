class Array
  def accumulate(&block)
    return enum_for(:accumulate) unless block_given?
    result = []

    for i in 0...length
      result[i] = yield self[i]
    end

    result
  end
end