# Preview all emails at http://localhost:3000/rails/mailers/newsletter
class NewsletterPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/newsletter/subscrible
  def subscrible
    NewsletterMailer.subscrible
  end

  # Preview this email at http://localhost:3000/rails/mailers/newsletter/unsubscrible
  def unsubscrible
    NewsletterMailer.unsubscrible
  end

end
