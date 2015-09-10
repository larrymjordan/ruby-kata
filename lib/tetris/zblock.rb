require_relative './block'

class Tetris::ZBlock < Tetris::Block
  rotate :left do
    "z rotates to left"
  end

  rotate :right do
    "z rotates to right"
  end
end
