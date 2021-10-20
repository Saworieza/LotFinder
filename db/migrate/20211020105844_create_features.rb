class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :feature
      t.references :vehicle, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
