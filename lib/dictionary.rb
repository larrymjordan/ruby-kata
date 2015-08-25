class Dictionary
  def self.generate(key, size = nil)
    return [] if key.empty?
    dictionary = key.chars.permutation.to_a.uniq.map(&:join).sort
    size.nil? ? dictionary : dictionary.take(size)
  end
end
