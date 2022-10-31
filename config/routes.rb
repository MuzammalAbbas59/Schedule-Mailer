require 'sidekiq/web'

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/articles", to: "articles#mailing"
  post "/send_email", to: "articles#send_email"
  mount Sidekiq::Web, at: '/jobs'

  # Defines the root path route ("/")
  # root "articles#index"
end
