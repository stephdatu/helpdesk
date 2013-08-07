require 'spec_helper'

feature "Editing Tickets" do
  before do
    FactoryGirl.create(:ticket, subject: "Rails4 Help")

    visit '/'
    click_link "Rails4 Help"
    click_link "Edit Ticket"
  end

  scenario "Updating a ticket" do
    fill_in "Subject", with: "Rails4 Help, please!"
    click_button "Update Ticket"

    expect(page).to have_content("Ticket has been updated.")
  end

  scenario "Updating a ticket with invalid attributes is bad" do
    fill_in "Subject", with: ""
    click_button "Update Ticket"
    expect(page).to have_content("Ticket has not been updated.")
  end
end
