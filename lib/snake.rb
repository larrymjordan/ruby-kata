require_relative 'context'

class Snake
  attr_accessor :body

  def initialize()
    @context = Context.new(self)
  end

  def up
    move_body(0, -1)
  end

  def down
    move_body(0, 1)
  end

  def left
    move_body(-1, 0)
  end

  def right
    move_body(1, 0)
  end

  private
  def move_body(x, y)
    (@body.length - 1).downto(1).each do |i|
      @body[i] = @body[i - 1]
    end
    @body[0] = [@body[0][0] + y, @body[0][1] + x]
    @context.update
  end
end
