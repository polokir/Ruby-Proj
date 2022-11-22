Rails.application.routes.draw do
    root 'session#index', as: 'home'
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    # root "articles#index"
    resources :session do
      resources :students
    end
end
