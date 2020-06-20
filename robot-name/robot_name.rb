class Robot

  attr_reader :name

  def initialize
      @name = @@all_names.pop
  end

  def self.forget
      @@all_names= ('AA000'..'ZZ999').to_a.shuffle
  end

  def reset
      @name = @@all_names.pop
  end

end