class UserSerializer < ActiveModel::Serializer
  attributes :name, :id
  has_many :bookshelves
  has_many :books, through: :bookshelves
end
