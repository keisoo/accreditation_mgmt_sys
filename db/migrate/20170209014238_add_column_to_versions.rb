class AddColumnToVersions < ActiveRecord::Migration[5.0]
  def change
    execute "ALTER TABLE versions ADD object_changes TEXT"
  end
end
