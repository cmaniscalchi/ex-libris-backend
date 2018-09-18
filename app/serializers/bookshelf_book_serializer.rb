class BookshelfBookSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :bookshelf, serializer: BookSerializer
  belongs_to :book, serializer: BookSerializer
end
