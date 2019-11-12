Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :workspaces do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :index]

end
