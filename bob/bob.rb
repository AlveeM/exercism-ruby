class Bob
  def self.hey(remark)
    bob = new
    bob.hear(remark)
    bob.think
    bob.speak
  end

  def initialize
  end

  def hear(remark)
    @remark = remark || ""
    @remark = @remark.scan(/\S/).join
  end

  def think
    if no_remark?
      @response = "Fine. Be that way!"
    elsif shouting? && question?
      @response = "Calm down, I know what I'm doing!"
    elsif shouting?
      @response = "Whoa, chill out!"
    elsif question?
      @response = "Sure."
    else
      @response = "Whatever."
    end
  end

  def speak
    @response
  end

  def shouting?
    remark_chars_arr = @remark.scan(/[[:alpha:]]/)
    remark_not_empty = remark_chars_arr.length > 0
    remark_chars_str = remark_chars_arr.join
    remark_chars_str_upcase = @remark.scan(/[[:upper:]]/).join

    (remark_not_empty) && (remark_chars_str == remark_chars_str_upcase)
  end

  def question?
    @remark.split('').last == '?'
  end

  def no_remark?
    @remark == ""
  end
end