class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :name
      t.string :address
      t.date :date
      t.text :description
      t.decimal :rate
      t.integer :hours
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
