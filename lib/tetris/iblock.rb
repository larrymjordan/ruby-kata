require_relative './block'

class Tetris::IBlock < Tetris::Block
  rotate :left do
    "i rotates to left"
  end

  rotate :right do
    "i rotates to right"
  end
end
