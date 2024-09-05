Rails.application.routes.draw do
  resources :garden_plants, only: [:new, :create, :update]
  resources :plants, only: [:show, :index, :new, :create]

  devise_for :users, controllers: {
  registrations: 'users/registrations'
}

  root 'home#homepage'
  get 'homepage', to: 'home#homepage'
  get "up" => "rails/health#show", as: :rails_health_check

  resources :users do
    resources :gardens do
    end
  end
end
