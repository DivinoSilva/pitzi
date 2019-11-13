Rails.application.routes.draw do
  root :to => "orders#index"
  resources :loyalty_plans, only: [:index]
  resources :customers, only: [:index, :create]
  resources :devices, only: [:index, :create]
  resources :offers, only: [:index, :create]
  resources :orders, only: [:index, :create]
end
