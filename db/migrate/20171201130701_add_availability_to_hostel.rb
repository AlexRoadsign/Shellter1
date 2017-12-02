class AddAvailabilityToHostel < ActiveRecord::Migration[5.1]
  def change
    add_column :hostels, :available_from, :date
    add_column :hostels, :available_until, :date
  end
end
