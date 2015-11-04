class Array
  def uniq
    uniq_array = []

    self.each do |x|
      uniq_array << x unless uniq_array.include?(x)
    end

    uniq_array
  end
end
