Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "home#index"
  resources :places do
    resources :adventures, only: [:new, :create, :destroy]
  end
end
