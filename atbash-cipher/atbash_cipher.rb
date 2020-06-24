class Atbash
  class << self
    ALPHABET_REVERSED = [*'a'..'z'].reverse.join
    def encode(plaintext)
      plaintext.downcase
               .gsub(/\W/, '')
               .tr('a-z', ALPHABET_REVERSED)
               .scan(/.{1,5}/).join(' ')
    end

    def decode(ciphertext)
      ciphertext.gsub(' ', '').tr('a-z', ALPHABET_REVERSED)
    end
  end
end