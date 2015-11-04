class Array

  def two_sum
    pairs = []

    self.count.times.each do |x|
        next unless self[x].is_a? Integer
        x.upto(count - 1).each do |y|
          next unless self[y].is_a? Integer
          pairs << [x, y] if self[x] + self[y] == 0
        end
      end

    pairs
  end
end
