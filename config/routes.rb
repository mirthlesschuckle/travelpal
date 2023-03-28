Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :trips do
    resources :matches, only: [:index]
  end

  resources :destinations, only: [ :index, :show ] do
    member do
      post 'toggle_favorite', to: 'destinations#toggle_favorite'
    end
    resources :activities, only: [ :index, :show ]
    resources :trips, only: [ :new, :create ]
  end

  resources :users do
    resources :reviews, only: [:create, :new, :show, :index]
  end
  resources :reviews, only: [:destroy]

  get "/dashboard", to: "users#dashboard", as: :dashboard

  resources :matches, only: [:create]

  resources :users do
    patch 'update_bio'
  end

  get '/users/:id/profile', to: 'users#profile', as: 'user_profile'
  get '/user/edit', to: 'users#edit', as: 'edit_current_user'

  resources :chatrooms, only: [:index, :show, :new, :create] do
    resources :messages, only: :create
  end


  get '/my_buddies', to: 'users#my_buddies', as: 'my_buddies'
  resources :chat_requests, only: [:create, :update], constraints: { id: /\d+/ }, via: [:post, :put, :get]
end
