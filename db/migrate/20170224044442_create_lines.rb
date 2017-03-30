class CreateLines < ActiveRecord::Migration[5.0]
  def change
    create_table :lines do |t|
      t.string :name
      t.references :number, foreign_key: true
      t.text :tags

      t.timestamps
    end
  end
end
