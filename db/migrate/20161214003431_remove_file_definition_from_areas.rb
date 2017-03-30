class RemoveFileDefinitionFromAreas < ActiveRecord::Migration[5.0]
  def change
    remove_column :areas, :file_definition, :string
  end
end
