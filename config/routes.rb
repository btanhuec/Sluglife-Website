Rails.application.routes.draw do
  get "posts/aboutus"

  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts



  ####root creates a landing page, whenever we edit routes, we should restart server
  root "posts#index"
end
