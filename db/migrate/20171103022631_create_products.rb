class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :product_ID
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
