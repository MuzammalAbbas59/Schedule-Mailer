require 'sidekiq-scheduler'
  
class ExampleJob < ApplicationJob
  queue_as :default
  
  def perform(*args)
    # Do something later
    CheckMailer.welcome_email.deliver_later(wait: 1.minute)
  end
end
