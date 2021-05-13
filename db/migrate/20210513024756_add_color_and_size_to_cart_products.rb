class AddColorAndSizeToCartProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :cart_products, :color, :string
    add_column :cart_products, :size, :string
  end
end
