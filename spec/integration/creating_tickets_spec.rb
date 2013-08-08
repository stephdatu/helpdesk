require 'spec_helper'

feature "Creating Help Desk Tickets" do
  before do
    visit '/'
    click_link "Submit a Ticket"
  end

  scenario "can create a ticket" do
    fill_in "Your Name", with: "Stephanie"
    fill_in "Subject", with: "Rails4 Help"
    fill_in "Message", with: "How do you setup strong params?"
    click_button "Create Ticket"
    page.should have_content("Ticket has been submitted.")
  end

  scenario "can not create a ticket without a name or subject" do
    click_button "Create Ticket"
    expect(page).to have_content("Ticket has not been submitted.")
    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Subject can't be blank")
  end
end
