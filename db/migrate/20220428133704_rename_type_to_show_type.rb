class RenameTypeToShowType < ActiveRecord::Migration[6.1]
  def change
    rename_column :shows, :type, :show_type
  end
end
