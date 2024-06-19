Rails.application.routes.draw do
  devise_for :sellers
  devise_for :shoppers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :shopper do
    get 'shoppers/sign_out' => "devise/sessions#destroy"
  end
  resources :shoppers

  devise_scope :seller do
    get 'sellers/sign_out' => "devise/sessions#destroy"
  end
  resources :sellers
  
  resources :items do 
    member do
      post "add"
    end
  end

  resources :cartings, only: [:destroy] do
    member do
      patch :move_to_saved
      patch :move_to_cart
      patch :save_cart
      patch :make_order
    end
  end

  resources :orders, only: [:show]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "items#index"
end
