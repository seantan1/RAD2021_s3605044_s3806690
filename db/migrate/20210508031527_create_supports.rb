class CreateSupports < ActiveRecord::Migration[5.0]
  def change
    create_table :supports do |t|
      t.string :email
      t.string :content

      t.timestamps
    end
  end
end
