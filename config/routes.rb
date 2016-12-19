Rails.application.routes.draw do
  namespace :users do
    get 'omniauth_callbacks/facebook'
  end

  get 'users/omniauth_callbacks'

  resources :cities
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'cities#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
