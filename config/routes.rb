Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # resources :books, only: [:index]
  resources :restaurants do
    # /restaurants/whatever
    collection do
      # verb '/whatever'
      get :top
    end

    # /restaurants/:id/whatever
    member do
      # verb :whatever
      get :chef
    end

    # I NEED TO KNOW THE ID OF THE PARENT!!!!!!!
    resources :reviews, only: [:new, :create]
  end

  # I DON'T NEED TO KNOW THE ID OF THE PARENT (belongs_to -> has_many)
  resources :reviews, only: %i[ index ]
end
