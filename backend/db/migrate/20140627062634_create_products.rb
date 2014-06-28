class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.decimal :amount, precision: 8, scale: 2
      t.string :small_image_url
      t.string :large_image_url
      t.integer :rating
      t.integer :review_count

      t.timestamps
    end
  end
end
