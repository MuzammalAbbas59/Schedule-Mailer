class ArticlesController < ApplicationController

  def mailing
  end

  def send_email
    CheckMailer.welcome_email().deliver_later
 
  end
end
