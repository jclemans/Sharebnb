class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :rental_id
      t.integer :booked

      t.timestamps
    end
    add_column :rentals, :price, :decimal, precision: 6, scale: 2
  end
end
