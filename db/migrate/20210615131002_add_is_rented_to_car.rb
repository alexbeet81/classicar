class AddIsRentedToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :is_rented, :boolean, default: false
  end
end
