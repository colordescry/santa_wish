Rails.application.routes.draw do
  root 'static_pages#home'
  get 'sessions/new'
  get    '/signup', to: 'parents#new'
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/new_child', to: 'children#new'
  post '/new_child', to: 'children#new'



  resources :children
  resources :parents
end
