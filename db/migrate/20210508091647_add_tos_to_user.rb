class AddTosToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tos, :boolean
  end
end
