class PhoneNumber
  VALID_NUM = /^([2-9]\d\d){2}\d{4}$/

  def self.clean(num)
    num = num.gsub(/\D/, "").sub(/^1/, "")
    num[VALID_NUM]
  end
end