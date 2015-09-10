require_relative './block'

class Tetris::LBlock < Tetris::Block
  rotate :left do
    "l rotates to left"
  end

  rotate :right do
    "l rotates to right"
  end
end
