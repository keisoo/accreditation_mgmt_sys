class AddParentUserToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :parent_user, foreign_key: true
  end
end
