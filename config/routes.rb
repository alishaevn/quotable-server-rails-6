Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'quotes#index', as: 'home'

  resources :quotes
  resources :users, param: :_username

  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
