Rails.application.routes.draw do
  root 'static_pages#home'

  get '/signup', to: 'parents#new'
  get '/new_child', to: 'children#new'
  post '/new_child', to: 'children#new'



  resources :children
  resources :parents
end
