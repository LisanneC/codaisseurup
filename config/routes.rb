Rails.application.routes.draw do

  root to: 'pages#home'

  namespace :api do
    resources :events
    resources :categories
  end

  devise_for :users

  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos


end
