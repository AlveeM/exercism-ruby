class Cipher
  attr_reader :key

  ALPHA = ('a'..'z').to_a
  RANDOM_KEY = Enumerator.new { |yielder| loop { yielder.yield ALPHA.sample}}

  def initialize(key = random_key(100))
    raise ArgumentError, 'Invalid Key' unless key =~ /\A[a-z]+\z/
    @key = key
  end

  def random_key(length)
    RANDOM_KEY.take(length).join
  end

  Hash[:encode, :+, :decode, :-].each do |name, operation|
    define_method(name) { |phrase| manipulate_text(phrase, operation)}
  end

  private

  def manipulate_text(phrase, operation)
    indexes(phrase).zip(indexes(@key)).reduce('') do |text, (phrase_key_idx, alpha_key_idx)|
      text + ALPHA[phrase_key_idx.send(operation, alpha_key_idx) % 26]
    end
  end

  def indexes(phrase)
    phrase.chars.map(&ALPHA.method(:index))
  end
end