class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.integer :mileage
      t.string :color
      t.string :body_type
      t.string :engine_type
      t.string :VIN
      t.string :transmission
      t.references :brand, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
