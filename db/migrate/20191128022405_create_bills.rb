class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :name
      t.string :address
      t.date :date
      t.text :description
<<<<<<< HEAD:db/migrate/20191117233001_create_bills.rb
      t.string :rate
      t.string :hours
=======
      t.decimal :rate
      t.integer :hours
>>>>>>> Luis:db/migrate/20191128022405_create_bills.rb
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
