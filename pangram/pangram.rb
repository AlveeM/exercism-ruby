class Pangram
  ALPHABET_LOWER = [*"a".."z"]

  def self.pangram?(sentence)
    # - can be used as set difference operator
    (ALPHABET_LOWER - sentence.downcase.chars).empty?
  end
end