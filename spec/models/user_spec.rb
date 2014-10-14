require 'spec_helper'

RSpec.describe User, type: :model do
  it 'has many events' do
    u = User.reflect_on_association(:events)
    expect(u.macro).to eq(:has_many)
  end

  
end
