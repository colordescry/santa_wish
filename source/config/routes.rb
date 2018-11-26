Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/signup'
  resources :wishlists
  resources :products
  resources :children
  resources :parents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#signup'
end
