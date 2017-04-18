Rails.application.routes.draw do
  # just the root page
  root 'home#main'

  # restful API
  resources :dogs
  resources :owners
end
