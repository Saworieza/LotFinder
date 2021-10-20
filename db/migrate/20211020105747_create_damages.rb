class CreateDamages < ActiveRecord::Migration[5.2]
  def change
    create_table :damages do |t|
      t.string :state
      t.string :primary
      t.string :secondary
      t.integer :value
      t.text :details
      t.references :vehicle, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
