Rails.application.routes.draw do
  resources :books do
  collection do
    get :demo
    get :file
  end
end
end
