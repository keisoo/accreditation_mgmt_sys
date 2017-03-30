class AddIsAcceptedToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :is_accepted, :boolean
  end
end
