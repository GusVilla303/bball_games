require 'spec_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :provider => "Provider",
      :uid => "Uid",
      :name => "Name"
    ))
  end

  # it "renders attributes in <p>" do
  #   render
  #   expect(rendered).to match(/First Name/)
  #   expect(rendered).to match(/Last Name/)
  #   expect(rendered).to match(/Provider/)
  #   expect(rendered).to match(/Uid/)
  #   expect(rendered).to match(/Name/)
  # end
end
