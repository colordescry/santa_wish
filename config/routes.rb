Rails.application.routes.draw do
  # resources :children
  resources :parents
  get '/signup', to: 'parents#new'
end
