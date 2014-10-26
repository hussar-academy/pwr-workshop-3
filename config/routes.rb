Rails.application.routes.draw do
  resources :comments

  resources :digs

  resources :users

  root 'users#index'
end
