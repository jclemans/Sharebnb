class ChangeRentals < ActiveRecord::Migration
  def change
    rename_column :rentals, :people, :guests
  end
end
