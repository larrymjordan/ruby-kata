class Fixnum
  def divisible_by?(number)
    (self % number).zero?
  end
end
