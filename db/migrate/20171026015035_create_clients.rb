class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :client_description
      t. string :client_id      
      t.timestamps
    end
  end
end
