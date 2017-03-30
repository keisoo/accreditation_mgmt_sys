class AddFileDefinitionToAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :file_definition, :string
  end
end
