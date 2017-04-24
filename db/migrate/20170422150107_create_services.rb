class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :Type
      t.string :Status

      t.timestamps
    end
  end
end
