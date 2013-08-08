class HelpdeskMailer < ActionMailer::Base
  default from: "sd356@drexel.edu"

  def ticket_copy(ticket)
    @ticket = ticket

    mail to: "sd356@drexel.edu"
  end
end
