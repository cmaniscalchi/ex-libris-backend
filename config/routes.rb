Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      get '/bookshelf', to: 'users#bookshelf'
      get '/search', to: 'users#search'
      post '/book_search', to: 'books#book_search'
      resources :users, only: :create
      resources :bookshelves, only: [:index, :create]
      resources :books, only: [:index, :create]
    end
  end
end
