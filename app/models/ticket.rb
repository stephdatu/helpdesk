class Ticket < ActiveRecord::Base
  validates :name, :subject, presence: true

  def self.create_from_postmark(mitt)
    ticket_id = mitt.to.split("@").first.split("+").last
    ticket = Ticket.find_by_ticket_id(ticket_id)
    ticket.message = mitt.text_body
    ticket.message
    ticket.save
  end

end
