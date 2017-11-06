class CreateBriefs < ActiveRecord::Migration[5.1]
  def change
    create_table :briefs do |t|
      t.string :age
      t.text :location
      t.string :social_class
      t.integer :budget
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
