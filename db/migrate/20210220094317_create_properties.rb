class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.integer :sq_meters
      t.integer :year
      t.integer :num_of_rooms
      t.integer :rent_price
      t.string :type
      t.string :state

      t.timestamps
    end
  end
end
