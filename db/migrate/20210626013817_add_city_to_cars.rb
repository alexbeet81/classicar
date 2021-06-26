class AddCityToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :city, :string
  end
end
