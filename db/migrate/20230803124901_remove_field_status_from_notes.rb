class RemoveFieldStatusFromNotes < ActiveRecord::Migration[7.0]
  def change
    remove_column :notes, :status, :string
  end
end
