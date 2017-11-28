class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :picture
      t.string :description
      t.string :email
      t.boolean :host

      t.timestamps
    end
  end
end
