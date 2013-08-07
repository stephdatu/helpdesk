require 'spec_helper'

feature "Viewing tickets" do
  scenario "Listing all tickets" do
    ticket = FactoryGirl.create(:ticket, subject: "Rails4 Help")
    visit '/'
    click_link "Rails4 Help"
    expect(page.current_url).to eql(ticket_url(ticket))
  end
end
