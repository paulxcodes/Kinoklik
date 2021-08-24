Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :movies
  resources :actors
  resources :users
  mount Mux::Engine, at: "/mux"


end
