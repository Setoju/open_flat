class CreateApartments < ActiveRecord::Migration[8.0]
  def change
    create_table :apartments do |t|
      t.string :title, null: false
      t.text :description
      t.decimal :price, precision: 12, scale: 2, null: false
      t.string :address, null: false

      t.timestamps
    end
  end
end
