class CreateMediaComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :media_components do |t|
      t.string :media_type
      t.string :media_subtype
      t.timestamps
    end
  end
end
