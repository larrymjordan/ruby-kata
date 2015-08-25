require 'spec_helper'

describe Dictionary do
  it 'returns empty array when empty key is passed' do
    Dictionary.generate('').must_equal []
  end

  it 'returns [AAAA] for key AAAA' do
    Dictionary.generate('AAAA').must_equal ['AAAA']
  end

  it 'returns [DDDD] for key DDDD' do
    Dictionary.generate("DDDD").must_equal ['DDDD']
  end

  it 'returns [ABBB, BABB, BBAB, BBBA] for  ABBB' do
    Dictionary.generate("ABBB").must_equal %w(ABBB BABB BBAB BBBA)
  end

  it 'returns [ABC, ACB, BAC, BCA, CAB, CBA] for ABC' do
    Dictionary.generate("ABC").must_equal %w(ABC ACB BAC BCA CAB CBA)
  end

  it "returns [AABB, ABAB, ABBA, BAAB, BABA, BBAA] for AABB" do
    Dictionary.generate("AABB").must_equal %w(AABB ABAB ABBA BAAB BABA BBAA)
  end

  it 'returns 24 combinations for ljMJ' do
    expected = ["JMjl", "JMlj", "JjMl", "JjlM", "JlMj", "JljM",
                "MJjl", "MJlj", "MjJl", "MjlJ", "MlJj", "MljJ",
                "jJMl", "jJlM", "jMJl", "jMlJ", "jlJM", "jlMJ",
                "lJMj", "lJjM", "lMJj", "lMjJ", "ljJM", "ljMJ"]
    Dictionary.generate('ljMJ').must_equal expected
  end

  it 'returns 3 combinations for ljMJ if dictionary_size is 3' do
    Dictionary.generate('ljMJ', 3).size.must_equal 3
  end
end
