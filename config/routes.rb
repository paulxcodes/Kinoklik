Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :movies
  resources :actors
  resources :users
  resources :clocks

  resources :settings
  get 'home/index' => 'home#index'
  get 'home/flot' => 'home#flot'
  get 'home/morris' => 'home#morris'
  get 'home/tables' => 'home#tables'
  get 'home/forms' => 'home#forms'

  get 'home/panels_wells' => 'home#panels_wells'
  get 'home/buttons' => 'home#buttons'
  get 'home/notifications' => 'home#notifications'
  get 'home/typography' => 'home#typography'
  get 'home/grid' => 'home#grid'
  get 'home/blank' => 'home#blank'
  get 'home/login' => 'home#login'

end
