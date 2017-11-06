class CreateClientProductLines < ActiveRecord::Migration[5.1]
  def change
    create_table :client_product_lines do |t|
      t.references :client, foreign_key: true
      t.references :product_line, foreign_key: true

      t.timestamps
    end
  end
end
