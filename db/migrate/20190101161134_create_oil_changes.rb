class CreateOilChanges < ActiveRecord::Migration[5.2]
  def change
    create_table :oil_changes do |t|
      t.references :vehicle, foreign_key: true
      t.date :date
      t.decimal :mileage
      t.string :oil_used
      t.text :notes

      t.timestamps
    end
  end
end
