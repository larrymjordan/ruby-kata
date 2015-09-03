require 'spec_helper'

describe Ghost do
  it 'does not raise an error when calling an inexisting method' do
    Ghost.new.no_existing_method
  end

  it 'should return method name when calling an inexisting method' do
    Ghost.new.no_existing_method.must_equal 'no_existing_method'
  end
end
