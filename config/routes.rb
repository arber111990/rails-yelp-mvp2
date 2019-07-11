Rails.application.routes.draw do
  # get 'review/new'
  # get 'review/create'
  # get 'review/review_params'
  # # get 'restaurant/index'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #  get "restaurants/:id", to: "restaurants#show"
  #  get "reviews/:id", to: "reviews#show"
  #  get "reviews/:id/edit", to: "reviews#edit"

  root to: "restaurants#index"
  #  resources :restaurants do
    resources :restaurants do
    # only: [:index, :show, :new, :create]
      resources :reviews, only: [:create, :new]
    end
      #  collection do                       # collection => no restaurant id in URL
      # get 'top'
    # end
end
