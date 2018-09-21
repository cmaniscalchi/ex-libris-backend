class UserSerializer < ActiveModel::Serializer
  attributes :name, :email
  has_many :bookshelves
end
