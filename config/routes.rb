Rails.application.routes.draw do
  root 'reports#index'
  resources :reports, except: :show
  resources :companies, only: %i[new create]
end
