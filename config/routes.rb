Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'

  resources :tops, only:[:index] do
    collection do
      get 'staff'
    end
  end

  resources :dogs do
    collection do
      get 'search'
    end
    resources :dog_records, only:[:index, :create]
  end
  
  resources :cats do
    collection do
      get 'search'
    end
    resources :cat_records, only:[:index, :create]
  end
end
