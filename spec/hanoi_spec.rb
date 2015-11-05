require 'rspec'
require 'hanoi'

describe TowersOfHanoiGame do
  let!(:game) { TowersOfHanoiGame.new }


  describe "#render" do

    it "displays the towers in a string" do
      expect( game.render).to be_instance_of(String)
    end

  end

  describe "#move" do
    before(:all) do
      @game = TowersOfHanoiGame.new
    end

    it "selects top piece from old tower and moves to new tower" do
      expect( @game.move(0, 1)).to eq ([1])
    end

    it "raises an error if moving from empty stack" do
      expect { @game.move(2, 1)}.to raise_error
    end

    it "raises an error if moving onto a smaller disk" do
      expect { @game.move(0, 1) }.to raise_error
    end
  end


  describe "#won?" do

    it "returns false if initial stack is still in first tower" do
      expect( game.won? ).to be_falsey
    end

    it "returns false if pieces are in multiple towers" do
      game = TowersOfHanoiGame.new
      game.move(0, 1)
      expect( game.won? ).to be_falsey
    end

    it "returns true if initial stack is in new tower" do
      game = TowersOfHanoiGame.new
      game.stacks = [[], [], [3, 2, 1]]
      expect( game.won? ).to be_truthy
    end

  end


end
