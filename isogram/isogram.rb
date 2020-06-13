class Isogram
  def self.isogram?(input)
    # input_char_only = input_char_only.downcase.delete('^a-z').chars
    input_char_only = input.downcase.gsub(/\W/, '').split('')
    input_char_only == input_char_only.uniq
  end
end