class CreateSavedProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_products do |t|
      t.integer :product_id
      t.integer :count

      t.timestamps
    end
  end
end
