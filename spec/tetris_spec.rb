require 'spec_helper'

describe Tetris do

  let(:basic_block){ Tetris::Block.new }

  describe Tetris::Block do
    it "initialize with x position equals to 0" do
      basic_block.x.must_equal 0
    end

    it "initialize with y position equals to 0" do
      basic_block.y.must_equal 0
    end

    it "can soft drop" do
      basic_block.drop_soft
      basic_block.y.must_equal 4
    end

    it "can move to the right" do
      basic_block.move_right
      basic_block.x.must_equal 4
    end

    it "can move to the left" do
      basic_block.move_right
      basic_block.move_right
      basic_block.move_left
      basic_block.x.must_equal 4
    end

    it "can not move to left if x = 0" do
      basic_block.move_left
      basic_block.x.must_equal 0
    end
  end

  describe Tetris::IBlock do
    it "responds to rotate_to_left" do
      iblock = Tetris::IBlock.new
      iblock.rotate_to_left
    end

    it "responds to rotate_to_right" do
      iblock = Tetris::IBlock.new
      iblock.rotate_to_right
    end
  end

  describe Tetris::JBlock do
    it "responds to rotate_to_left" do
      iblock = Tetris::JBlock.new
      iblock.rotate_to_left
    end

    it "responds to rotate_to_right" do
      iblock = Tetris::JBlock.new
      iblock.rotate_to_right
    end
  end

  describe Tetris::LBlock do
    it "responds to rotate_to_left" do
      iblock = Tetris::LBlock.new
      iblock.rotate_to_left
    end

    it "responds to rotate_to_right" do
      iblock = Tetris::LBlock.new
      iblock.rotate_to_right
    end
  end

  describe Tetris::OBlock do
    it "responds to rotate_to_left" do
      iblock = Tetris::OBlock.new
      iblock.rotate_to_left
    end

    it "responds to rotate_to_right" do
      iblock = Tetris::OBlock.new
      iblock.rotate_to_right
    end
  end

  describe Tetris::SBlock do
    it "responds to rotate_to_left" do
      iblock = Tetris::SBlock.new
      iblock.rotate_to_left
    end

    it "responds to rotate_to_right" do
      iblock = Tetris::SBlock.new
      iblock.rotate_to_right
    end
  end

  describe Tetris::TBlock do
    it "responds to rotate_to_left" do
      iblock = Tetris::TBlock.new
      iblock.rotate_to_left
    end

    it "responds to rotate_to_right" do
      iblock = Tetris::TBlock.new
      iblock.rotate_to_right
    end
  end

  describe Tetris::ZBlock do
    it "responds to rotate_to_left" do
      iblock = Tetris::ZBlock.new
      iblock.rotate_to_left
    end

    it "responds to rotate_to_right" do
      iblock = Tetris::ZBlock.new
      iblock.rotate_to_right
    end
  end
end
