Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'pages#index'

  resources :products, only: [:index, :show]

  namespace :admin do
    root 'pages#index'
    resources :products
    resources :vendors, except: [:show]
  end


end
