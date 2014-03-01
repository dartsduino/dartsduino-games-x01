require 'spec_helper'

describe Dartsduino::Games::X01 do
  it 'should have a version number' do
    Dartsduino::Games::X01::VERSION.should_not be_nil
  end

  it 'should do something useful' do
    false.should eq(true)
  end
end
