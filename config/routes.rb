Rails.application.routes.draw do
  resources :comments

  resources :digs do
    post :upvote
  end

  resources :users

  root 'home#index'
end

