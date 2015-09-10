require_relative './block'

class Tetris::JBlock < Tetris::Block
  rotate :left do
    "j rotates to left"
  end

  rotate :right do
    "j rotates to right"
  end
end
