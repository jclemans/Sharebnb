class AddCalendarColumns < ActiveRecord::Migration
  def change
    add_column :reservations, :startdate, :date
    add_column :reservations, :enddate, :date
  end
end
