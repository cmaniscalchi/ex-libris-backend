class BookshelfBookSerializer < ActiveModel::Serializer
  belongs_to :bookshelf, serializer: BookshelfSerializer
  belongs_to :book, serializer: BookSerializer
end
