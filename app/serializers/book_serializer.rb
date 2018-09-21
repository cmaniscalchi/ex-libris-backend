class BookSerializer < ActiveModel::Serializer
  attributes :title, :author, :publication_year, :image_url
  has_many :bookshelves, through: :bookshelf_books
end
