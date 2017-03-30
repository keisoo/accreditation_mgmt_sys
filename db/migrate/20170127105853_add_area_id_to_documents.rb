class AddAreaIdToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_reference :documents, :area, foreign_key: true
  end
end
