require 'spec_helper'

describe KataRange::Range do

  let(:two_to_six)            { KataRange::Range.new('[2, 6)') }
  let(:two_to_six_closed)     { KataRange::Range.new('[2, 6]') }
  let(:two_to_six_closed_six) { KataRange::Range.new('(2, 6]') }
  let(:two_to_six_open)       { KataRange::Range.new('(2, 6)') }
  let(:two_to_five)           { KataRange::Range.new('[2, 5)') }
  let(:two_to_ten)            { KataRange::Range.new('[2, 10)')}
  let(:three_to_five)         { KataRange::Range.new('[3, 5)') }
  let(:three_to_ten)          { KataRange::Range.new('[3, 10)') }
  let(:seven_to_ten)          { KataRange::Range.new('[7, 10)') }

  describe "integer range contains" do
    it "contains {2,4} from [2,6)" do
       two_to_six.contains?([2,4]).must_equal true
    end

    it "doesn't contain {-1,1,6,10} from [2,6)" do
       two_to_six.contains?([-1,1,6,10]).wont_equal true
    end
  end

  describe "getAllPoints?" do
    it "returns allPoints = {2,3,4,5} for [2,6) " do
       two_to_six.all_points.must_equal [2,3,4,5]
    end
  end

  describe "ContainsRange?" do
    it "does not contains [7,10) for [2,5)" do
      two_to_five.contains?(seven_to_ten).wont_equal true
    end

    it "does not contains [3,10) for [2,5)" do
      two_to_five.contains?(three_to_ten).wont_equal true
    end

    it "does not contains [2,10) for [3,5)" do
      three_to_five.contains?(two_to_ten).wont_equal true
    end

    it "contains [3,5) for [2,10)" do
      two_to_ten.contains?(three_to_five).must_equal true
    end

    it "contains [3,5) for [3,5)" do
      three_to_five.contains?(three_to_five).must_equal true
    end
  end

  describe "endPoints" do
    it "returns allPoints = {2,3,4,5} for range [2, 6)" do
      two_to_six.all_points.must_equal [2,3,4,5]
    end

    it "returns allPoints = {2,3,4,5,6} for range [2, 6]" do
      two_to_six_closed.all_points.must_equal [2,3,4,5,6]
    end

    it "returns allPoints = {3,4,5} for range (2, 6)" do
      two_to_six_open.all_points.must_equal [3,4,5]
    end

    it "returns allPoints = {3,4,5,6} for range (2, 6]" do
      two_to_six_closed_six.all_points.must_equal [3,4,5,6]
    end
  end

  describe "overlapsRange" do
    it "doesn't overlap with [7,10) range [2, 5)" do
      two_to_five.overlaps?(seven_to_ten).wont_equal true
    end

    it "overlaps with [3,5) range [2, 10)" do
      two_to_ten.overlaps?(three_to_five).must_equal true
    end

    it "overlaps with [3,5) range [3, 5)" do
      three_to_five.overlaps?(three_to_five).must_equal true
    end

    it "overlaps with [3,10) range [2, 5)" do
      two_to_five.overlaps?(three_to_ten).must_equal true
    end

    it "overlaps with [2,10) range [3, 5)" do
      three_to_five.overlaps?(two_to_ten).must_equal true
    end
  end

  describe "equals" do
    it "asserts as true range [3,5) is equal to [3,5)" do
      three_to_five.equals(three_to_five).must_equal true
    end

    it "asserts as false range [2, 10) not equal to [3,5)" do
      two_to_ten.equals(three_to_ten).wont_equal true
    end

    it "asserts as false range [2,5) not equal to [3,10)" do
      two_to_five.equals(three_to_ten).wont_equal true
    end

    it "asserts as false range [3,5) not equal to [2,10)" do
      three_to_five.equals(two_to_ten).wont_equal true
    end
  end
end
