class BookshelfSerializer < ActiveModel::Serializer
  attributes :name
  belongs_to :user, serializer: UserSerializer
  has_many :bookshelf_books
  has_many :books, through: :bookshelf_books
  # has_and_belongs_to_many :books
end
