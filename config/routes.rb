Rails.application.routes.draw do
  resources :products do
    member do
      delete :delete_image_attachment
      delete :delete_all_attachment
      delete :delete_single_attachment
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
