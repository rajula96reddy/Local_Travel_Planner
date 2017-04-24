class RemoveStatusFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :Status, :string
  end
end
