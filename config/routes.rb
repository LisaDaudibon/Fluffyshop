Rails.application.routes.draw do
  devise_for :users
 
  root "home#index"
  get "home/index"

  resources :cart
  resources :items
  resources :cart_items
  resources :order, only: [:new, :create]

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end

  namespace :admin do
    resources :items, :orders 
    resources :users 
  end

end
