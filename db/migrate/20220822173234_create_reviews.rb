class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
    t.integer :user_id
    t.integer :admin_id
    t.integer :book_id
    t.integer :rating
    t.string :review

    t.timestamps
    end
  end
end
