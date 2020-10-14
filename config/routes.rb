Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "prototypes#index"
  get 'ptototypes', to: 'prototypes#index'
  post 'prototypes', to: 'prototypes#create'
  get 'ptototype', to: 'prototypes#show'
  get 'ptototypes', to: 'prototypes#edit'
  patch 'ptototypes', to: 'prototypes#update'
  delete 'prototypes', to: 'prototypes#destroy'

  resources :prototypes, only: [:new, :create, :show, :edit ,:update,:destroy]
  resources :prototypes do
    resources :comments, only: [:create]
  end
  resources :users, only: :show
  
end
