module KataRange

  class Range
    attr_reader :from, :to

    def initialize(range_expression)
      /[\(\[](\d+),\s?(\d+)[\)\]]/ =~  range_expression
      @from = range_expression.start_with?('(') ? $1.to_i + 1 : $1.to_i
      @to   = range_expression.end_with?(')') ? $2.to_i - 1 : $2.to_i
    end

    def contains?(points)
      if  points.is_a? KataRange::Range
        contains?([ points.from,  points.to])
      else
         points.all? { |point| from <=  point && to >=  point }
      end
    end

    def all_points
      @from.upto(@to).map(&:to_i)
    end

    def overlaps?(range)
      all_points.any?{|point| range.all_points.include? point}
    end

    def equals?(other)
      other.all_points == self.all_points
    end
  end
end
