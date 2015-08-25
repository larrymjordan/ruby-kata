require_relative '../cache_word_counter'

class File
  def self.count_words(file_url)
    sentences = IO.readlines(file_url)
    return {} if sentences.empty?
    count_words_in sentences
  end

  private
  def self.count_words_in(sentences)
    counter = CacheWordCounter.new
    sentences.inject({}) do |_, sentence|
      counter.count(sentence)
    end
  end
end
