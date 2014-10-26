Rails.application.routes.draw do
  resources :digs

  resources :users

  root 'users#index'
end
