Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  namespace :admin do
    resources :series, only: [:new, :create, :show]
  end
end
