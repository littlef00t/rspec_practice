require 'rspec'
require 'practice'

describe Array do
  describe "#uniq" do
    it "returns an empty array for an empty array" do
      expect([].uniq).to eq([])
    end

    it "returns self for single element array" do
      single_array = [1]
      expect(single_array.uniq).to be(single_array)
    end

    it "does not change arrays within array" do
      expect([[1, 2], [3, 4], [1, 2]].uniq).to eq([[1, 2], [3, 4]])
    end

    it "raises an error if not passed an array" do
      expect { "string".uniq }.to raise_error
    end

    it "returns a unique array" do
      expect([1, 2, 1, 3, 3].uniq).to eq([1, 2, 3])
    end
  end
end

#comment
#another comment
