class Crypto
  def initialize(str)
    @str = normalize(str)
  end

  def ciphertext
    return str if str.length <= 1

    grid.transpose.map(&:join).join(' ')
  end

  private

  attr_reader :str

  def normalize(str)
    str.downcase.gsub(/[^a-z0-9]/, '')
  end

  def chunk_size
    Math.sqrt(str.length).ceil
  end

  def grid
    size = chunk_size
    grid = str.chars.each_slice(size).to_a
    grid.last << ' ' while grid.last.size < size
    grid
  end
end