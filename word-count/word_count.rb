class Phrase
  def initialize(phrase)
    @words_arr = phrase.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    # @words_arr.group_by {|word| word.itself}.transform_values {|inner_arr| inner_arr.count}
    @words_arr.group_by(&:itself).transform_values(&:count)
  end
end

words = ["one", "two", "two"]
words.group_by {|word| word.itself}.transform_values {|inner_arr| inner_arr.count}