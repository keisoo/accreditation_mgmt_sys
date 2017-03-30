class AddUserIdToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_reference :documents, :user, foreign_key: true
  end
end
