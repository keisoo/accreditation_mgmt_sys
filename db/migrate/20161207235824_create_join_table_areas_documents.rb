class CreateJoinTableAreasDocuments < ActiveRecord::Migration[5.0]
  def change
    create_join_table :areas, :documents do |t|
      t.index [:area_id, :document_id]
      t.index [:document_id, :area_id]
    end
  end
end
