class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.decimal :price
      t.string :category
      t.integer :popularity
      t.string :size
      t.string :color
      t.integer :stockcount
      t.datetime :arrival

      t.timestamps
    end
  end
end
