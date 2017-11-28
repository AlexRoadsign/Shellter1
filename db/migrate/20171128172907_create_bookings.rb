class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :entry_date
      t.date :end_date
      t.integer :number_of_person
      t.references :user, foreign_key: true
      t.references :hostel, foreign_key: true

      t.timestamps
    end
  end
end
