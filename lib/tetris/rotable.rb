module Tetris
  module Rotable
    def self.included(base)
      base.extend(self)
    end

    private
    def rotate(side, &block)
      self.send(:define_method, "rotate_to_#{side}", &block)
    end
  end
end
