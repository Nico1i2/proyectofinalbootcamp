class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.text :description
      t.string :client_ID

      t.timestamps
    end
  end
end
