class AddPriceToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :price, :int
  end
end
