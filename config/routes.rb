Rails.application.routes.draw do
  resources :calculators
  #resources :calculators
  post 'calculators/new'
 end
