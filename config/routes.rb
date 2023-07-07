Rails.application.routes.draw do
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  resources :article, except: [:edit, :update]
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
end
