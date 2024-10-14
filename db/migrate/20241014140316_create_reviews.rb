class CreateReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :reviews do |t|
      t.integer :screen
      t.string :seat
      t.string :pref_seat
      t.text :content
      t.decimal :rating
      t.string :image_url
      t.references :cinema, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
