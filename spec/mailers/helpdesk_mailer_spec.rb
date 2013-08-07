require "spec_helper"

describe HelpdeskMailer do
  describe "ticket_copy" do
    let(:mail) { HelpdeskMailer.ticket_copy }

    it "renders the headers" do
      mail.subject.should eq("Ticket copy")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
