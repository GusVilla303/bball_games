require "spec_helper"
require "rails_helper"

RSpec.feature "User can view" do

  scenario "events on their show page" do
    user  = User.new(id: 1, first_name: "Gustavo")
    event = Event.new(description: "3 on 3")
    visit user_path
    expect(page).to have_content("Gustavo")
    expect(page).to have_content("3 on 3")
  end
end
