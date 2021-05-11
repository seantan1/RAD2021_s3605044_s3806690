class CreateCartProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_products do |t|
      t.integer :product_id

      t.timestamps
    end
  end
end
