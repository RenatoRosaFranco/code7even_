# frozen_string_literal: true
class NewsletterMailer < ApplicationMailer

  default from: 'marketing@code7even.com.br'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  def subscrible(newsletter)
    @newsletter = newsletter
    mail({
      to: newsletter.email,
      subject: "#{newsletter.name}, você se inscreveu com sucesso em nossa newsletter."
    })
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup 
  def unsubscrible(newsletter)
    @newsletter = newsletter
    mail({
      to: newsletter.email,
      subject: "#{newsletter.name}, Já vai? esperamos te-lo novamente por aqui."
    })
  end
end
