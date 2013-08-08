class HelpdeskMailer < ActionMailer::Base
  default from: "sd356@drexel.edu",
          to: "stephdatu@gmail.com"

  def ticket_copy(ticket)
    @ticket = ticket
    mail reply_to: "ee50015884ff7c243efafa6ca30e79e6+#{ticket.id}@inbound.postmarkapp.com",
         subject: "Ticket submitted: #{ticket.subject}"
  end
end
