class AddDetailsToNotifications < ActiveRecord::Migration[7.2]
  def change
    add_column :notifications, :notification_type, :string
    add_column :notifications, :content, :text
    add_column :notifications, :read, :boolean, default: false
  end
end
