class BookshelfBookSerializer < ActiveModel::Serializer
  belongs_to :bookshelf, serializer: BookSerializer
  belongs_to :book, serializer: BookSerializer
end
