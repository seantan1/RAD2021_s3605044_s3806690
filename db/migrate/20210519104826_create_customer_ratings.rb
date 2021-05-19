class CreateCustomerRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_ratings do |t|
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end
