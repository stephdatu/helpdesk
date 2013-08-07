require 'spec_helper'

feature "Deleting tickets" do
  scenario "Deleting a ticket" do
    FactoryGirl.create(:ticket, subject: "Rails4 Help")

    visit '/'
    click_link "Rails4 Help"
    click_link "Delete Ticket"

    expect(page).to have_content("Ticket has been destroyed.")

    visit '/'
    expect(page).to have_no_content("Rails4 Help")
  end
end
