Rails.application.routes.draw do
  namespace :admin do
    resources :companies, only: [:destroy, :index, :new, :create, :show]
    resources :users, only: [:destroy, :index, :new, :create, :show]
  end

  resources :companies, only: [:show]
end
