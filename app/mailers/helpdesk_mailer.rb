class HelpdeskMailer < ActionMailer::Base
  default from: "sd356@drexel.edu"

  def ticket_copy(ticket)
    @ticket = ticket

    mail to: "stephdatu@gmail.com", subject: "Ticket submitted: #{ticket.subject}"
  end
end
