class Context
  
  def initialize(snake)
    @snake = snake
    clear_space
    locate_at_center
  end

  def update
    clear_space
    @snake.body.each do |part|
      @space[part[0]][part[1]] = "s"
    end
    print
  end

  private
  def clear_space
    @space = Array.new(8){ Array.new(8){"."}}
  end

  def locate_at_center
    half = @space.length / 2
    @snake.body = [[half, half], [half, half - 1], [half, half - 2]]
    update
  end

  def print
    puts @space.map{|a|a.join(" ")}.join("\n")
  end
end
