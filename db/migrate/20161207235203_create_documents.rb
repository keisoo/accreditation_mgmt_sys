class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :document_file
      t.boolean :is_archived

      t.timestamps
    end
  end
end
