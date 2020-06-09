class Acronym
  def self.abbreviate(phrase)
    words_arr = phrase.scan(/\w+/)
    words_arr.reduce('') {|acc, word| acc += word[0].upcase}
  end
end