Rails.application.routes.draw do
  devise_for :users
  root 'reports#index'
  resources :reports, except: :show
  resources :companies, only: %i[new create]
end
