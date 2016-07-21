Rails.application.routes.draw do
  resources :posts
  devise_for :users, skip: [:registrations]
  root to: 'static#homepage'
end
