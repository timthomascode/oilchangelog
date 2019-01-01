class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :nickname
      t.string :make
      t.string :model
      t.decimal :mileage

      t.timestamps
    end
  end
end
