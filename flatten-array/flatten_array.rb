class FlattenArray
  class << self
    def flatten(arr)
      result = []

      arr.each do |element|
        if element.is_a?(Array)
          inner_arr_flattened = flatten(element)
          inner_arr_flattened.each {|el| result << el}
        else
          result << element if !element.nil?
        end
      end

      result
    end
  end
end