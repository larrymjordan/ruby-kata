class FooBar
  def self.print(number)
    return 'FooBar' if number.divisible_by? 15
    return 'Foo'    if number.divisible_by? 3
    return 'Bar'    if number.divisible_by? 5
    "#{number}"
  end
end
