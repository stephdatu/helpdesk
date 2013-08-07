class HelpdeskMailer < ActionMailer::Base
  default from: "helpdesk@example.com"

  def ticket_copy(ticket)
    @ticket = ticket

    mail to: "helpdesk@example.com"
  end
end
