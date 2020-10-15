Rails.application.routes.draw do
  root 'welcome#index'
  #get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :pokemons
  resources :players
  resources :battles
  resources :stats
  resources :player_pokemons
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'players#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get '/pages/:page' => 'pages#show'

end
