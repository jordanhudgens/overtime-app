Rails.application.routes.draw do
  resources :audit_logs
  namespace :admin do
    resources :users
resources :posts
resources :admin_users

    root to: "users#index"
  end

  resources :posts
  devise_for :users, skip: [:registrations]
  root to: 'static#homepage'
end
