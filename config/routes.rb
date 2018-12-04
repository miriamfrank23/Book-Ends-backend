Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index, :show, :update]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :books
    end
  end

  namespace :api do
    namespace :v1 do
      resources :comments
    end
  end

  namespace :api do
    namespace :v1 do
      resources :user_books
    end
  end

end
