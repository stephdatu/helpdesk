class HelpdeskMailer < ActionMailer::Base
  default from: "sd356@drexel.edu"

  def ticket_copy(ticket)
    @ticket = ticket

    mail to: "stephdatu@gmail.com", subject: "Ticket submitted: #{ticket.subject}",
         reply_to: "ee50015884ff7c243efafa6ca30e79e6+#{ticket.id}@inbound.postmarkapp.com"
  end
end
