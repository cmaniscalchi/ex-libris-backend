Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      post '/logout', to: 'auth#logout'
      get '/bookshelf', to: 'users#bookshelf'
      get '/search', to: 'users#search'
      post '/book_search', to: 'books#book_search'
      post '/book_details', to: 'books#book_details'
      resources :users, only: :create
      resources :bookshelves, only: [:index, :create]
      resources :books, only: [:index, :create, :destroy]
    end
  end
end
