class CreateBookshelfBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookshelf_books do |t|
      t.references :bookshelf, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
