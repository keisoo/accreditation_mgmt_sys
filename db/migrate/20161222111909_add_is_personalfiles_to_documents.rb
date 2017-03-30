class AddIsPersonalfilesToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :is_personalfiles, :boolean
  end
end
