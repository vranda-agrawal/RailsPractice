Rails.application.routes.draw do
  get 'user/index'
  get 'user/create'
  get 'user/new'
  get 'user/edit'
  get 'user/update'
  resources 'users'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
