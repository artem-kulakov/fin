Rails.application.routes.draw do
  root 'reports#index'
  resources :reports
  resources :companies, only: %i[new create]
end
