Rails.application.routes.draw do
  resources :jobs, only: [:index, :show, :create, :update, :destroy]
end
