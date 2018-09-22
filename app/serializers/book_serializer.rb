class BookSerializer < ActiveModel::Serializer
  attributes :title, :author, :publication_year, :image_url, :goodreads_book_id, :goodreads_author_id
  has_many :bookshelf_books
  has_many :bookshelves, through: :bookshelf_books
  # has_and_belongs_to_many :bookshelves
end
