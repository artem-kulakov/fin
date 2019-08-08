Rails.application.routes.draw do
  root 'reports#index'

  resources :reports
  resources :companies
  resources :standards
  resources :periods
  resources :industries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
