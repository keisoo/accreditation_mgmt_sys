class AddAreaIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :area, foreign_key: true
  end
end
