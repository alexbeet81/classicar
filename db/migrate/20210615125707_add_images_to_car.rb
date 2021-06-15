class AddImagesToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :image_one, :string
    add_column :cars, :image_two, :string
    add_column :cars, :image_three, :string
  end
end
