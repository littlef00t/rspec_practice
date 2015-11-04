require 'my_transpose'
require 'rspec'

describe Array do
  describe '#my_transpose' do

    it "returns empty array for an empty array" do
      expect { [].my_transpose }.to raise_error
    end

    it "returns empty column for empty row" do
      expect { [1].my_transpose }.to raise_error
    end

    it "raises an error if not an array" do
      expect {"string".my_transpose}.to raise_error
    end

    it "converts row-oriented to column-oriented representations" do
      expect([[0, 1], [2, 3]].my_transpose).to eq([[0, 2], [1, 3]])
    end

    it "converts larger square grids" do
      grid = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
      transposed_grid = [[0, 3, 6], [1, 4, 7], [2, 5, 8]]
      expect(grid.my_transpose).to eq(transposed_grid)
    end
  end
end
