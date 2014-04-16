class AddAttachmentImgToRentals < ActiveRecord::Migration
  def self.up
    change_table :rentals do |t|
      t.attachment :img
    end
  end

  def self.down
    drop_attached_file :rentals, :img
  end
end
