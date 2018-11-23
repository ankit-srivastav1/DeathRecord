Rails.application.routes.draw do
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users,:controllers => { :sessions => "users/sessions" }

  root "users#index"

  resources :deceaseds

  resources :homes




end
