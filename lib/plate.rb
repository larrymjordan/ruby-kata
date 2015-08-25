class Plate

  ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

  def self.places_between(from, to)
    return 0 if from > to
    resp = 0
    resp += (ALPHABET.index(to[2]) - ALPHABET.index(from[2]))
    resp += 26 * (ALPHABET.index(to[1]) - ALPHABET.index(from[1]))
    resp += 26 ** 2 * (ALPHABET.index(to[0]) - ALPHABET.index(from[0]))
    resp *= 1000
    resp += to[3..-1].to_i - from[3..-1].to_i
  end
end
