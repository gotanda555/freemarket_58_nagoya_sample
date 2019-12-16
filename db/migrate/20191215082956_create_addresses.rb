class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address_number, null: false
      t.integer :address_prefecture, null: false, default: 0
      t.string :address_name, null: false
      t.string :address_block, null: false
      t.string :address_building, null: false
      t.integer :address_phone_number, null: false
      t.references  :user, foreign_key: true
      t.timestamps
    end
  end
end