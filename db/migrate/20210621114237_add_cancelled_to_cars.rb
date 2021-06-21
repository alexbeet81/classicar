class AddCancelledToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :cancelled, :boolean, default: false
  end
end
