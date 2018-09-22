class UserSerializer < ActiveModel::Serializer
  attributes :name, :email
  has_many :bookshelves
  has_many :bookshelf_books, through: :bookshelves
end
