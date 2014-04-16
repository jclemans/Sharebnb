class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :user_id
      t.string :description
      t.integer :people
      t.string :location
      t.timestamps
    end
  end
end
