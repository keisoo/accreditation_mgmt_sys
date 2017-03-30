class AddDefaultToDocuments < ActiveRecord::Migration[5.0]
  def change
    change_column :documents, :is_accepted, :boolean, default: false
  end
end
