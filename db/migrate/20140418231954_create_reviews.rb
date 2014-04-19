class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rating
      t.integer :rental_id
      t.integer :user_id
      t.timestamps
    end
  end
end
