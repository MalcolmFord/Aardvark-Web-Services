Rails.application.routes.draw do
  resources :accounts
  resources :account_types
  resources :payment_plans
  resources :change_requests
  resources :businesses
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
