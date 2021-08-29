Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'

  resources :dogs do
    collection do
      get 'search'
    end
  end
  resources :cats, only:[:index, :new, :create]
end
