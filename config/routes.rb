Rails.application.routes.draw do

  devise_for :users
  root to: 'cars#index'
  resources :cars, only: [:index, :new, :create] do
    resources :tags, only: [:create]
  end
end
