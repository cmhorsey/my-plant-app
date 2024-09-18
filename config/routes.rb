Rails.application.routes.draw do
  root 'home#homepage'
  get 'homepage', to: 'home#homepage'
  get "up" => "rails/health#show", as: :rails_health_check

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users, only: [:show] do
    resources :gardens, only: [:show, :index, :new, :create]
  end

  resources :garden_plants, only: [:new, :create, :update, :destroy]

  resources :plants, only: [:show, :index, :new, :create]
end
