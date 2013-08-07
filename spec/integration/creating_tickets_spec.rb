require 'spec_helper'

feature "Creating Help Desk Tickets" do
  scenario "can create a ticket" do
    visit '/'
    click_link "Submit a Ticket"
    fill_in "Your Name", with: "Stephanie"
    fill_in "Subject", with: "Rails4 Help"
    fill_in "Message", with: "How do you setup strong params?"
    click_button "Create Ticket"
    page.should have_content("Ticket has been submitted.")
  end
end
