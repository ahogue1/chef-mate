Rails.application.routes.draw do


  resources :profiles, only: [:show]
  resources :bookings, only: [:create, :show, :update]
  resources :meals
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "meals#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
