require "spec_helper"

RSpec.feature "User can view" do

  scenario "events on their show page" do
    user  = User.create!(first_name: "Gustavo")
    event = Event.create!(description: "3 on 3")
    visit user_path(user.id)
    expect(page).to have_content("Gustavo")
    expect(page).to have_content("3 on 3")
  end
end
