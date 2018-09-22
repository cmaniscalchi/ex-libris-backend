class Book < ApplicationRecord
  has_many :bookshelf_books
  has_many :bookshelves, through: :bookshelf_books
  # has_and_belongs_to_many :bookshelves
end
