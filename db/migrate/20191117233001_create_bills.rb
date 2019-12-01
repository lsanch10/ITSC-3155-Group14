class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :name
      t.string :address
      t.string :date
      t.text :description
      t.string :rate
      t.string :hours
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
