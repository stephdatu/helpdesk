class Api::TicketsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    # make sure the thing posting has rights to post here... maybe with
    # http basic auth or a super secret token
    Ticket.create_from_postmark(Postmark::Mitt.new(request.body.read))
    render text: "Created a ticket!", status: :created
  end
end

# require 'lib/postmark_mitt'

# # if you are doing this in a controller
# email = Postmark::Mitt.new(request.body.read)

# email.to "ee50015884ff7c243efafa6ca30e79e6@inbound.postmarkapp.com"
# email.from "Steph D <stephdatu@gmail.com>"
# email.from_email "stephdatu@gmail.com"
# email.text_body
# email.headers
