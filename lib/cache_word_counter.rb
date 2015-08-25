require_relative 'word_counter'

class CacheWordCounter < WordCounter
  def initialize
    @cache = {}
  end

  def count(sentence)
    @cache.merge!(super) do |key, oldval, newval|
      oldval + newval
    end
  end
end
