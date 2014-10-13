require 'spec_helper'

RSpec.describe User, :type => :model do
  it 'should have many events' do
    u = User.reflect_on_association(:events)
    u.macro.should == :has_many
  end
end
