Rails.application.routes.draw do
  root to: 'static_pages#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  resource :session, only: [:new, :create, :destroy]
end
