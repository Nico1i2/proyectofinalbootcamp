Rails.application.routes.draw do
  resources :briefs
  resources :products
  resources :brands
  resources :client_product_lines
  resources :product_lines
  resources :clients
  get 'home/index'

  devise_for :models
  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
