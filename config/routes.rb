Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create]
      post '/login', to: 'auth#create'
      get '/bookshelf', to: 'users#bookshelf'
      get '/search', to: 'users#search'
      post '/book_search', to: 'books#book_search'
      resources :bookshelves, only: [:index, :create]
      resources :bookshelf_books, only: [:index, :create]
      resources :books, only: [:index, :create]
    end
  end
end
