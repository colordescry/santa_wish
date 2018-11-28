Rails.application.routes.draw do
   root 'static_pages#home'
  resources :children
  resources :parents
  get '/signup', to: 'parents#new'
end
