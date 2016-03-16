Rails.application.routes.draw do
  root to: 'static_pages#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resource :session, only: [:new, :create, :destroy]
end
