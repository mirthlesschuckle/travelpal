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

  get "/dashboard", to: "users#dashboard", as: :dashboard

  resources :matches, only: [:create]
end
