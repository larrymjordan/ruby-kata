require_relative './block'

class Tetris::TBlock < Tetris::Block

  def initialize
    initialize_block_states
  end

  rotate :left do
    @block_states.rotate!
    return @block_states.first
  end

  rotate :right do
    @block_states.rotate!(-1)
    return @block_states.first
  end
end

private
def initialize_block_states
  @block_states = []
  @block_states.unshift("""
        |
        |______
        |
        |
  """)

  @block_states.unshift("""
  ------+------
        |
        |
  """)

  @block_states.unshift("""
        |
  ______|
        |
        |
  """)

  @block_states.unshift("""
        |
        |
  ------+------
  """)
end
