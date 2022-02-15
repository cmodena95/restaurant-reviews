Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]

    collection do
      get :top
      # get :bottom
    end

    member do
      get :chef
    end
  end

  resources :reviews, only: [:destroy]

  # get 'restaurants/top', to: 'restaurants#top', as: :top_restaurants
  # get :top
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
