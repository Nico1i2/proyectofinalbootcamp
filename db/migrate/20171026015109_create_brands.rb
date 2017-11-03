class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.string :brand_description
      t.string :brand_id
      t.timestamps
    end
  end
end
