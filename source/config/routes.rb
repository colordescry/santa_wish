Rails.application.routes.draw do
  resources :wishlists
  resources :products
  resources :children
  resources :parents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
