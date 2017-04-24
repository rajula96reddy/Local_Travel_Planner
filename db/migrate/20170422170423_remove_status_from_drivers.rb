class RemoveStatusFromDrivers < ActiveRecord::Migration[5.0]
  def change
    remove_column :drivers, :Status, :string
  end
end
