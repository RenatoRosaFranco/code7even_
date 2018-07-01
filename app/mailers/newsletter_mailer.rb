class NewsletterMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.subscrible.subject
  #
  def subscrible
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.unsubscrible.subject
  #
  def unsubscrible
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
