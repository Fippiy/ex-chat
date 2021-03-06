Rails.application.routes.draw do
  devise_for :users
  # root 'messages#index'
  root 'groups#index'
  resources :groups, only: [:index, :new, :create, :edit, :update] do
    resources :messages, only: [:index]
  end
  resources :users, only: [:edit, :update]
end
