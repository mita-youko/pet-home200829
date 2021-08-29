Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'

  resources :dogs, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
