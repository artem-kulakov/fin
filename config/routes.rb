Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'reports#index'
  resources :reports, except: :show
  resources :companies, only: %i[new create]
end
