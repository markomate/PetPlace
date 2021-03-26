Rails.application.routes.draw do
  get 'donations' => 'donations#index'
  get 'donations/success'
  resources :listings
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'home#index'
end
