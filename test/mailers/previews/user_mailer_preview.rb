# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def user_mail
    UserMailer.user_mail(Person.first)
  end
end
