$: << File.expand_path('../lib', File.dirname(__FILE__))

require 'minitest/autorun'
require 'ext/fixnum'
require 'foo_bar'

describe Fixnum do
  it 'should return true if 5 is divisible by 5' do
    5.divisible_by?(5).must_equal true
  end

  it 'should return false if 3 is not divisible by 2' do
    3.divisible_by?(2).must_equal false
  end
end

describe FooBar do
  it "prints Foo if number is three" do
    FooBar.print(3).must_equal 'Foo'
  end

  it "prints Foo is number is six" do
    FooBar.print(6).must_equal 'Foo'
  end

  it "prints Foo is number is nine" do
    FooBar.print(9).must_equal 'Foo'
  end

  it "prints Bar if number is five" do
    FooBar.print(5).must_equal 'Bar'
  end

  it "prints Bar if number is ten" do
    FooBar.print(10).must_equal 'Bar'
  end

  it "prints Bar if number is fifty" do
    FooBar.print(50).must_equal 'Bar'
  end

  it "prints FooBar if number is fifteen" do
    FooBar.print(15).must_equal 'FooBar'
  end

  it "prints FooBar if number is thirty" do
    FooBar.print(30).must_equal 'FooBar'
  end

  it "prints FooBar if number is fourty five" do
    FooBar.print(45).must_equal 'FooBar'
  end

  it "prints two if number is two" do
    FooBar.print(2).must_equal '2'
  end

  it "prints four if number is four" do
    FooBar.print(4).must_equal '4'
  end

  it "prints seven if number is seven" do
    FooBar.print(7).must_equal '7'
  end
end
