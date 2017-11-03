class CreatePlanMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_media do |t|
      t.string :plan_media_description
      t.timestamps
    end
  end
end
