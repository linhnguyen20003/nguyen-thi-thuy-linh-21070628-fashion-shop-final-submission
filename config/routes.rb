require 'sidekiq/web'

Rails.application.routes.draw do
  resources :carts
  resources :cart_items
  resources :stocks
  resources :order_informations
  resources :product_infomations
  resources :payment_informations
  resources :infomations
  resources :customer_infomations
  resources :customers
  resources :payments
  resources :orders
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'product_infomations#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
