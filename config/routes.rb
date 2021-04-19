Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
  resources :events, only: [:new, :create, :show, :index, :destroy]

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  
  delete "sign_out", to:"sessions#destroy"

  root to: "main#show"
end
