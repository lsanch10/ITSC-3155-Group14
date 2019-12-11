class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :Name
      t.string :Address
      t.string :Phone_Number
      t.string :Email
      t.date :Court_Date
      t.text :Case_Description

      t.timestamps
    end
  end
end
