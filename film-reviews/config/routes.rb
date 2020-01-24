Rails.application.routes.draw do
  resources :users
  root to: 'sessions#welcome'
  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  get 'welcome', to: 'sessions#welcome'

  get 'authorized', to: 'sessions#page_requires_login'

  delete 'logout', to: 'sessions#destroy'

  get 'users/reviews', to: 'users#reviews'

  get 'films/best' , to: 'films#best'
  

  resources :reviews
  resources :films
  resources :film_genres
  resources :genres
  get '/reviews/new/:film_id', to: "reviews#new", as: "film_addition"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
