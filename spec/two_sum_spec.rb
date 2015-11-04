require 'rspec'
require 'two_sum'

describe Array do
  describe "#two_sum" do

    it "returns empty array for an empty array" do
      expect([].two_sum).to eq([])
    end

    it "returns empty array for single element array" do
      expect([1].two_sum).to eq([])
    end

    it "returns empty array if no pairs add to zero" do
      expect([1, 2, 3].two_sum).to eq([])
    end

    it "raises an error if not an array" do
      expect {"string".two_sum}.to raise_error
    end

    it "returns index pairs of pairs that sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq ([[0, 4], [2, 3]])
    end

    it "returns multiple pairs" do
      expect([-1, 1, -1, 0].two_sum).to eq([[0, 1], [1, 2]])
    end
  end
end
