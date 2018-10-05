# frozen_string_literal: true
class ContactMailer < ApplicationMailer

  default from: 'contato@code7even.com.br'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  def received(contact)
    @contact = contact
    mail({
      to: "contato@code7even.com.br",
      subject: "Novo e-mail enviado por #{contact.name}."
    })
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  def sended(contact)
    @contact = contact
    mail({
      to: contact.email,
      subject: "#{contact.name}, recebemos seu e-mail com sucesso."
    })
  end
end
