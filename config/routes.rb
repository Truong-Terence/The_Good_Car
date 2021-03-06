Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cars, only: [:index, :show] do #, :create, :edit, :update, :destroy
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index] # , :show, :update
end
