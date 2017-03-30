class AddDefaultValue < ActiveRecord::Migration[5.0]
  def change
    change_column :lines, :indicator_name, :text, :default => ""
  end
end
