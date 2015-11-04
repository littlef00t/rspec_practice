class Array
  def my_transpose
    dimension = self.first.count

    cols = Array.new(dimension) { Array.new(dimension) }

    dimension.times do |x|
      dimension.times do |y|
        cols[y][x] = self[x][y]
      end
    end
    cols
  end



  # def my_transpose
  #   dimension = self.first.count
  #   cols = Array.new {dimension}
  #
  #   self.each_with_index do |row, idx|
  #     row.each_with_index do |col, idx2|
  #       cols[idx] = self[idx2]
  #     end
  #   end
  #
  #     cols
  # end

end
