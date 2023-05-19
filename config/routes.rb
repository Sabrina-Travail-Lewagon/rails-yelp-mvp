Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # Voir la liste de tous les restos
  get 'restaurants', to: 'restaurants#index', as: :restaurants
  # root to: 'restaurants#index'
  # Ajouter un restaurant
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'
  # Voir le détail d'un restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # Creation d'une review pour un resto
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  post 'restaurants/:restaurant_id', to: 'reviews#create', as: :restaurant_reviews

  # # Voir la liste de tous les restos
  # get 'restaurants', to: 'restaurants#index', as: :restaurants
  # # root to: 'restaurants#index'
  # # Ajouter un restaurant
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'
  # # Voir le détail d'un restaurant
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # # Creation d'une review pour un resto
  # get 'restaurants/:restaurant_id/new', to: 'reviews#new', as: :new_restaurant_review
  # post 'restaurants', to: 'reviews#create', as: :restaurant_reviews
end
