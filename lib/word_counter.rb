class WordCounter

  def count(sentence)
    return {} if sentence.empty?
    words = extract_words_from sentence
    count_words(words)
  end

  private
  def extract_words_from(sentence)
    single_words = sentence.gsub(/[^0-9a-zA-Z\s]/, '')
    single_words.downcase.split(/\s+/)
  end
  
  def count_words(words)
    words_counter = Hash.new(0)
    words.each {|word| words_counter[word.to_sym] += 1}
    words_counter
  end
end
