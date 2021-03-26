Rails.application.routes.draw do
  resources :listings
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'home#index'
end
