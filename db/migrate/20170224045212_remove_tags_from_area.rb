class RemoveTagsFromArea < ActiveRecord::Migration[5.0]
  def change
    remove_column :areas, :tags, :text
  end
end
