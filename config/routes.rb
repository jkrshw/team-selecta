Teamselecta::Application.routes.draw do
  resources :clubs do
    resources :members
  end

  resources :hubs

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get "home/index"
  root 'home#index'
end
