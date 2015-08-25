module KataRange

  class Range
    attr_reader :from, :to

    def initialize(from, to, config = {})
      @from = config[:from] == :open ? from + 1 : from
      @to = config[:to] == :open ? to - 1 : to
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

    def equals(range)
      range.all_points == self.all_points
    end
  end
end
