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
    get "member/new" => "member#new"
    get "member/show" => "member#show"
    resources :posts
  end

  namespace :manager do
    root "top#index"
    get "login" => "sessions#new", as: :login
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
  end
end
