Rails.application.routes.draw do
  resources :collageteachers
  get 'demo/index'
  get 'demo/hello'
  resources :schools
  resources :hospitals
  resources :recipes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
