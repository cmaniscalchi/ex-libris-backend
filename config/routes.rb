Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      post '/logout', to: 'auth#logout'

      resources :books, only: [:index, :create, :update, :destroy]
      post '/author_book_search', to: 'books#author_book_search'
      post '/book_cover_search', to: 'books#book_cover_search'
      post '/book_details', to: 'books#book_details'
      post '/book_search', to: 'books#book_search'

      resources :bookshelves, only: [:index, :create, :update, :destroy]

      resources :users, only: :create
      get '/bookshelf', to: 'users#bookshelf'
      get '/search', to: 'users#search'
    end
  end
end
