Rails.application.routes.draw do
  namespace :member_posts do
    resources :comments
    post "comment" => "member_post_comment"
  end
  namespace :member do
    root "sessions#new"
    get "images/index" => "images#index"
    get "login" => "sessions#new", as: :login
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
    resource :password, only: [ :show, :edit, :update]
    get "ramen_member/new" => "member#new"
    post "ramen_member/new" => "member#create"
    get "ramen_member/show" => "member#show"
    resources :comments, only: [:create]
    resources :posts do
      resources :comments, only: [:create]
    end
  end

  namespace :manager do
    root "top#index"
    get "login" => "sessions#new", as: :login
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
  end
end
