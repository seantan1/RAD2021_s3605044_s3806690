class AddUserIdToCartProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :cart_products, :user_id, :integer
    add_index :cart_products, :user_id
  end
end
