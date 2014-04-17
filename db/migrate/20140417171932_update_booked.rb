class UpdateBooked < ActiveRecord::Migration
  def change
    remove_column :reservations, :booked
    add_column :reservations, :booked, :boolean
  end
end
