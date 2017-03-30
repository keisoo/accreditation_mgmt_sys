class AddLineIdToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_reference :documents, :line, foreign_key: true
  end
end
