class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :seats
      t.string :year
      t.string :colour
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
