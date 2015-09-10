require_relative './block'

class Tetris::OBlock < Tetris::Block
  rotate :left do
    "o rotates to left"
  end

  rotate :right do
    "o rotates to right"
  end
end
