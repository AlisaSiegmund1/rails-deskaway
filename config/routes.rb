Rails.application.routes.draw do

  get 'admin/name'
  get 'admin/index'
  devise_for :users
  root to: 'pages#home'

  resources :workspaces do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :index]

end
