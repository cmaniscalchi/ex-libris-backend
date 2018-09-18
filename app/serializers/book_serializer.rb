class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :goodreads_book_id, :author, :goodreads_author_id, :publication_year, :image_url
  has_many :bookshelves, through: :bookshelf_books
end
