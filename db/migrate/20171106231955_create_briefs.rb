class CreateBriefs < ActiveRecord::Migration[5.1]
  def change
    create_table :briefs do |t|
      t.string :age
      t.string :location
      t.string :social_class
      t.integer :budget
      t.references :brand

      t.timestamps
    end
  end
end
