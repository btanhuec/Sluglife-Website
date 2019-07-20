Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts

  ####root creates a landing page, whenever we edit routes, we should restart server
  root "posts#index"
end
