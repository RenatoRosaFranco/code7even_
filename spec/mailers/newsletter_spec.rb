require "rails_helper"

RSpec.describe NewsletterMailer, type: :mailer do
  describe "subscrible" do
    let(:mail) { NewsletterMailer.subscrible }

    it "renders the headers" do
      expect(mail.subject).to eq("Subscrible")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "unsubscrible" do
    let(:mail) { NewsletterMailer.unsubscrible }

    it "renders the headers" do
      expect(mail.subject).to eq("Unsubscrible")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
