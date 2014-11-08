Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
    end
  end

  get 'api' => proc { [404, {}, ['Invalid API endpoint']] }
  get 'api/*path' => proc { [404, {}, ['Invalid API endpoint']] }

  root 'home#index'
  get '*path', to: 'home#index'
end

