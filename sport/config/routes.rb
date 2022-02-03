Rails.application.routes.draw do
  resources :captions
  resources :achivements
  resources :players
  resources :sports
  #resources :sports, only: [:show]
  #resources :sports, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
