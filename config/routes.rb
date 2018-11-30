Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'
  resources :children
  resources :parents
  get '/signup', to: 'parents#new'
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
