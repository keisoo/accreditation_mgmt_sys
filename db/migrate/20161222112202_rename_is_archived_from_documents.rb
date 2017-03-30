class RenameIsArchivedFromDocuments < ActiveRecord::Migration[5.0]
  def change
    rename_column :documents, :is_archived, :is_starred
  end
end
