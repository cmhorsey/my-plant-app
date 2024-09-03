Rails.application.routes.draw do
  resources :garden_plants
  resources :gardens
  resources :plants
  # devise_for :users
  devise_for :users, controllers: {
  registrations: 'users/registrations'
}
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'home#homepage'
  get 'homepage', to: 'home#homepage'
  get 'dashboard', to: 'home#dashboard'

  resources :users do
    resources :gardens do
      resources :plants, only: [:index, :show]
    end
  end
end
