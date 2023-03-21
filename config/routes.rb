Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :destinations, only: [ :index, :show ] do
    resources :activities, only: [ :index, :show ]
  end

  get "/profile", to: "users#profile", as: :profile

end
