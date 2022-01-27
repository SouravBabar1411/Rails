Rails.application.routes.draw do
  resources :logins
  devise_for :users
  resources :appointments
  resources :patients
  resources :doctors
  resources :achivements
  resources :players
  resources :sports
  #resources :sports, only: [:show]
  #resources :sports, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
