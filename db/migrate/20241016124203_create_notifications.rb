class CreateNotifications < ActiveRecord::Migration[7.2]
  def change
    create_table :notifications do |t|
      t.references :comment, foreign_key: true
      t.references :vote, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
