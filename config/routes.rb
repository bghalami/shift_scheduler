Rails.application.routes.draw do
  namespace :admin do
    resources :companies, only: [:delete, :index, :new, :create]
  end

  resources :companies, only: [:show]
end
