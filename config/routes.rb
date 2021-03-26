Rails.application.routes.draw do
  root to: 'home#index'
  resources :listings
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  get 'donations' => 'donations#index'
  get 'donations/success'
  get '/profiles/:id/edit' => 'profiles#edit'
end
