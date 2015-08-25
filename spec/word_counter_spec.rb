require 'spec_helper'

describe WordCounter do

  let(:counter){ WordCounter.new }

  it "returns an empty hash if sentence is empty" do
    counter.count("").must_equal({})
  end

  it "returns one for 'word'" do
    counter.count("word").must_equal({:word => 1})
  end

  it "returns two elements for 'two words'" do
    counter.count("two words").must_equal({:two => 1, :words => 1})
  end

  it "returns three elements for 'three words expected'" do
    counter.count("three words expected").must_equal({:three => 1, :words => 1, :expected => 1})
  end

  it "counts duplicated words" do
    counter.count("is this what is needed?").must_equal({:is => 2, :this => 1, :what => 1, :needed => 1})
  end

  it "removes spetial characters" do
    counter.count("what & who?").must_equal({:what => 1, :who => 1})
  end

  it "counts go Go GO and returns one element with value equal to three" do
    counter.count("go Go GO").must_equal({:go => 3})
  end
end

describe CacheWordCounter do
  let(:cache_counter) { CacheWordCounter.new }

  it "counts words like WordCounter" do
    cache_counter.count("word").must_equal({:word => 1})
  end

  it "caches words counting" do
    cache_counter.count("word")
    cache_counter.count("words and word").must_equal({:word => 2, :and => 1, :words => 1})
  end
end

describe File do

  it "returns empty hash for a empty file" do
    File.count_words('./temp/empty.txt').must_equal({})
  end

  it "counts file one line" do
    File.count_words('./temp/one_line.txt').must_equal({:word => 1})
  end

  it "counts two lines of file" do
    File.count_words('./temp/multiple_lines.txt').must_equal({:word => 3, :go => 3, :explained => 1})
  end
end
