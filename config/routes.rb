Rails.application.routes.draw do
  get "sessions/new"
  root "static_pages#home"
  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  
  get "/signup", to: 'users#new'
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/login", to: "sessions#destroy"
  resources :users
end
