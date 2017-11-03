class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_description
      t.string :product_id
      t.timestamps
    end
  end
end
