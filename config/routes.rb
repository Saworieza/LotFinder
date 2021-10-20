Rails.application.routes.draw do
  resources :features
  resources :damages
  resources :vehicles
  resources :brands
  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
