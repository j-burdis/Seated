class CreateCinemas < ActiveRecord::Migration[7.2]
  def change
    create_table :cinemas do |t|
      t.string :name
      t.string :address
      t.text :description
      t.decimal :average_rating
      t.string :image_url

      t.timestamps
    end
  end
end
