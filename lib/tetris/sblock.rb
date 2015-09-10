require_relative './block'

class Tetris::SBlock < Tetris::Block
  rotate :left do
    "s rotates to left"
  end

  rotate :right do
    "s rotates to right"
  end
end
