class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :goodreads_book_id
      t.string :author
      t.integer :goodreads_author_id
      t.integer :publication_year

      t.timestamps
    end
  end
end
