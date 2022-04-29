class RenameIdToShowId < ActiveRecord::Migration[6.1]
  def change
    rename_column :shows, :id, :show_id
  end
end
