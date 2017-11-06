class CreateProductLines < ActiveRecord::Migration[5.1]
  def change
    create_table :product_lines do |t|
      t.string :name
      t.text :description
      t.string :product_line_ID

      t.timestamps
    end
  end
end
