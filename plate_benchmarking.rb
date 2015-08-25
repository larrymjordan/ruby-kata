require_relative 'lib/plate'
require 'benchmark'

Benchmark.bm do |bm|
  bm.report("Plate calculation") do
    result = Plate.places_between('AAA000','ZZZ999')
    puts " result = #{result}"
  end

  bm.report("Range calculation") do
    result = ('AAA000'...'ZZZ999').count
    puts " result = #{result}"
  end
end
