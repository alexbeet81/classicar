class RemoveCancelledToCars < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :cancelled, :boolean
  end
end
