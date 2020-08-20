Rails.application.routes.draw do
  namespace :member do
    resources :posts
  end
  namespace :member do
    root "top#index"
    get "images/index" => "images#index"
    get "login" => "sessions#new", as: :login
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
    resource :password, only: [ :show, :edit, :update]
    resources :posts
  end

  namespace :manager do
    root "top#index"
    get "login" => "sessions#new", as: :login
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
  end
end
