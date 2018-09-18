Rails.application.routes.draw do
  root 'application#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'

  resources :users do
    resources :invitations, only: [:index, :show]
  end

  resources :invitations, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
