class AddDefaultToIsRented < ActiveRecord::Migration[6.1]
  def change
    change_column :cars, :is_rented, :boolean, default: false
  end
end
