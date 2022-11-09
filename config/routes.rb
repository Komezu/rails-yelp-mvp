Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: %i[index show new create] do
    # resources :reviews, only: %i[new create]
    resources :reviews, only: :create
  end
end
