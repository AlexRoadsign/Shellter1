class CreateHostels < ActiveRecord::Migration[5.1]
  def change
    create_table :hostels do |t|
      t.string :location
      t.string :headline
      t.string :name
      t.integer :price
      t.integer :rating
      t.string :picture
      t.string :category
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
