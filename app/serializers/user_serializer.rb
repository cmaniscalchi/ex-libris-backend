class UserSerializer < ActiveModel::Serializer
  attributes :name, :email
  has_many :bookshelves
  has_many :books, through: :bookshelves
end
