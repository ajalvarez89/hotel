class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :room, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true
      t.date :check_in
      t.date :check_out
      t.float :minibar
      t.float :final_price

      t.timestamps
    end
  end
end
