class AddUserIdToAreas < ActiveRecord::Migration[5.0]
  def change
    add_reference :areas, :user, foreign_key: true
  end
end
