Rails.application.routes.draw do
  resources :books
  resources :wish_books
  resources :user_books
  resources :comments

  resources :users, only: [:create, :index, :show, :update]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
