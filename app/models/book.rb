class Book < ApplicationRecord
  belongs_to :bookshelf
  # accepts_nested_attributes_for :bookshelf
end
