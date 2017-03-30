class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.text :message
      t.boolean :is_seen, default: false
      t.references :document, foreign_key: true

      t.timestamps
    end
  end
end
