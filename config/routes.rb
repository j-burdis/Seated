Rails.application.routes.draw do
  
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"
  
  resources :cinemas, only: [:index, :show] do
    resources :reviews, only: [:new, :create] do 
      resources :comments, only: [:create, :destroy]
      resources :votes, only: [:create, :destroy]
    end
    resources :favourites, only: [:create]
  end
  resources :reviews, only: [:edit, :update, :destroy]
  resources :favourites, only: [:index, :destroy]

  resources :notifications, only: [:index, :destroy]

  # get "favourites/index"
  # get "favourites/create"
  # get "favourites/destroy"
  # get "reviews/new"
  # get "reviews/create"
  # get "reviews/edit"
  # get "reviews/update"
  # get "reviews/destroy"
  # get "cinemas/index"
  # get "cinemas/show"

  # get "notifications/index"
  # get "notifications/create"
  # get "notifications/destroy"
  # get "comments/create"
  # get "comments/destroy"
  # get "votes/create"
  # get "votes/destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
