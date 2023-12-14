Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :markets, only: [:index]

  get '/markets/:market_id', to: 'markets#show'
end
