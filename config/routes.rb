Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"


  resources :trips, only: [ :index, :show, :edit, :update, :destroy ]

  resources :destinations, only: [ :index, :show ] do
    member do
      post 'toggle_favorite', to: 'destinations#toggle_favorite'
    end
    resources :activities, only: [ :index, :show ]
    resources :trips, only: [ :new, :create ]
  end

  get "/profile", to: "users#profile", as: :profile

end
