require 'stock_picker'
require 'rspec'

describe Array do
  describe '#stock_picker' do

    it "returns nil for an empty array" do
      expect([].stock_picker).to eq(nil)
    end

    it "returns nil for single element array" do
      expect([].stock_picker).to eq(nil)
    end

    it "raises an error if not passed an array" do
      expect { "string".stock_picker }.to raise_error
    end

    it "outputs most profitable pair of days" do
      expect([23, 31, 14, 0, 34].stock_picker).to eq ([3, 4])
    end


  end
end
