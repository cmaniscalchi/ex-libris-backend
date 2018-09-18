Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :bookshelves, only: [:index, :create]
      resources :bookshelf_books, only: [:index, :create]
      resources :books, only: [:index, :create]
      post '/book_search', to: "books#book_search"
    end
  end
end
