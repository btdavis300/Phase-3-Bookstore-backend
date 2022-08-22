class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :genre
      t.boolean :cart 
      t.boolean :favorite
      t.boolean :ebook
      t.date :published_date
      t.integer :price

      t.timestamps
    end
  end
end
