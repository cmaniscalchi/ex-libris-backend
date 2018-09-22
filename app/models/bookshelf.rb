class Bookshelf < ApplicationRecord
  belongs_to :user
  has_many :bookshelf_books
  has_many :books, through: :bookshelf_books
  # has_and_belongs_to_many :books
end
