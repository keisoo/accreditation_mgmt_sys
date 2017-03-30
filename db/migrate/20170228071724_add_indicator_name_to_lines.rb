class AddIndicatorNameToLines < ActiveRecord::Migration[5.0]
  def change
    add_column :lines, :indicator_name, :text
  end
end
