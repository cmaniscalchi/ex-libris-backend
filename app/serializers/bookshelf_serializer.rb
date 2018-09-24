class BookshelfSerializer < ActiveModel::Serializer
  attributes :name, :id
  belongs_to :user, serializer: UserSerializer
  has_many :books
end
