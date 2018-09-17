class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.references :user, foreign_key: true
      t.jsonb :book_object

      t.timestamps
    end
  end
end
