class AddCategoryIdToTopic < ActiveRecord::Migration[7.0]
  def change
    add_column :topics, :category_id, :integer
  end
end
