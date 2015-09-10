require_relative 'rotable'

class Tetris::Block
  include Tetris::Rotable

  attr_reader :x, :y

  def initialize
    @x = 0
    @y = 0
  end

  def drop_soft
    @y += 4
  end

  def move_right
    @x += 4
  end

  def move_left
    @x -= 4 if @x > 0
  end
end
