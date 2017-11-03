class CreateProductLines < ActiveRecord::Migration[5.1]
  def change
    create_table :product_lines do |t|
      t.string :product_line_name
      t.string :product_line_description
      t.string :product_line_id
      t.timestamps
    end
  end
end
