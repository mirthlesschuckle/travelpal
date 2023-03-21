Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :destinations, only: [ :index, :show ]
  resources :trips

  # Defines the root path route ("/")
  # root "articles#index"

  # Defines the route for the user profile page (users controller)
  get "/profile", to: "users#profile", as: :profile

end
