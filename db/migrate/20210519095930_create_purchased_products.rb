class CreatePurchasedProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :purchased_products do |t|
      t.integer :product_id
      t.integer :count

      t.timestamps
    end
  end
end
