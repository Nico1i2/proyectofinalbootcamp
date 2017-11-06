class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :name
      t.text :description
      t.string :brand_ID
      t.string :facebook_url
      t.string :instagram_url
      t.string :twitter_url
      t.string :web_page_url
      t.references :product_line, foreign_key: true
      t.timestamps
    end
  end
end
