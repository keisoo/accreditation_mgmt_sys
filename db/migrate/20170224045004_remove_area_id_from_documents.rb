class RemoveAreaIdFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :documents, :column => :area_id
    remove_column :documents, :area_id, :integer
  end
end
