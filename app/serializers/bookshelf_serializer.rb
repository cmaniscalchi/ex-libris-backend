class BookshelfSerializer < ActiveModel::Serializer
  attributes :name
  belongs_to :user, serializer: UserSerializer
  has_many :books, through: :bookshelf_books
end
