class CreateOwnedMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :owned_media do |t|
      t.string :facebook_url
      t.string :instagram_url
      t.string :twitter_url
      t.string :web_page_url
      t.timestamps
    end
  end
end
