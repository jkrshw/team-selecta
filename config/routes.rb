Teamselecta::Application.routes.draw do
  resources :clubs do
    resources :members, only: [:index, :new, :create]
    resources :events, only: [:index, :new, :create]
  end
  
  resources :events do
		resources :guests
  end

  resources :members

  resources :hubs

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get "home/index"
  root 'home#index'
end
