class CheckMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    mail(to: "abmuzammal7@gmail.com", subject: 'Welcome to My Awesome Site')
  end
end
