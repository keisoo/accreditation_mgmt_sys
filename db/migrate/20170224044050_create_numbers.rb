class CreateNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :numbers do |t|
      t.string :name
      t.references :parameter, foreign_key: true

      t.timestamps
    end
  end
end
