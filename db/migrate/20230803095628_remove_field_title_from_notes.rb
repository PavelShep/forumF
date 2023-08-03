class RemoveFieldTitleFromNotes < ActiveRecord::Migration[7.0]
  def change
    remove_column :notes, :title, :string
  end
end
