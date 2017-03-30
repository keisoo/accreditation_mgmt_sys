class AddTagsToAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :tags, :text
  end
end
