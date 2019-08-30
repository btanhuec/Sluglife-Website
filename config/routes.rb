Rails.application.routes.draw do
  get "posts/aboutus"
  get "products/index"
  get "products/slugtee1"
  get "products/slugtee2"
  get "products/landing"

  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  resources :products
  resources :carted_items



  ####root creates a landing page, whenever we edit routes, we should restart server
  root "products#landing"
end
