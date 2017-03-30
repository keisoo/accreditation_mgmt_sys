class AddIsAcceptedToNotifications < ActiveRecord::Migration[5.0]
  def change
    add_column :notifications, :is_accepted, :boolean
  end
end
