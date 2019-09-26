Rails.application.routes.draw do

  resources :bids
  get 'approve_bid/:id', to: 'bids#approve_bid', as: 'approve_bid'
  resources :reviews
  resources :ads
  root 'home#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :users, ActiveAdmin::Devise.config


  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
    devise_for :users, controllers: {
         # sessions: 'users/sessions',
        :omniauth_callbacks => "users/omniauth_callbacks" 
      }
        get 'fatch_subcatgory', to: 'categories#fatch_subcatgory', as: 'fatch_subcatgory'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
