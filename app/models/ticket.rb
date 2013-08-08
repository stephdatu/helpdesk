class Ticket < ActiveRecord::Base
  validates :name, :subject, presence: true

  def self.create_from_postmark(mitt)
    ticket_id = mitt.to.split("@").first.split("+").last
    ticket = Ticket.find_by_ticket_id(ticket_id)
    ticket.message_id = mitt.message_id
    ticket.title = mitt.subject
    ticket.text_body
    ticket.save
  end

end
