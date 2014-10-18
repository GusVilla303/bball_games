require 'spec_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :provider => "MyString",
      :uid => "MyString",
      :name => "MyString"
    ))
  end

  # it "renders new user form" do
  #   render
  #
  #   assert_select "form[action=?][method=?]", users_path, "post" do
  #
  #     assert_select "input#user_first_name[name=?]", "user[first_name]"
  #
  #     assert_select "input#user_last_name[name=?]", "user[last_name]"
  #
  #     assert_select "input#user_provider[name=?]", "user[provider]"
  #
  #     assert_select "input#user_uid[name=?]", "user[uid]"
  #
  #     assert_select "input#user_name[name=?]", "user[name]"
  #   end
  # end
end
