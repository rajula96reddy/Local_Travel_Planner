class AddStatusToDrivers < ActiveRecord::Migration[5.0]
  def change
    add_column :drivers, :Status, :string
  end
end
