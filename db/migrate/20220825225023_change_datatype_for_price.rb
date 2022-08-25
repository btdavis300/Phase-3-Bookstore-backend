class ChangeDatatypeForPrice < ActiveRecord::Migration[6.1]
  def change
    change_column :books, :price, :string
  end
end
