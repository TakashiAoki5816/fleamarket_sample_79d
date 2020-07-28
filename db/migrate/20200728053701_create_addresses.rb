class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :postal_code, null: false
      t.string :prefectures, null: false
      t.string :city, null: false
      t.string :house_number, null: false
      t.string :building_name
      t.integer :phone_number, null: false, unique: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
