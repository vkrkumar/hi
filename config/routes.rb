Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  resources :posts
  resources :students
  
  root 'posts#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
