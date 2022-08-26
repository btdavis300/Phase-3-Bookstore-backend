class ChangeDatatypeForPublishedDate < ActiveRecord::Migration[6.1]
  def change
    change_column :books, :published_date, :integer 
  end
end
