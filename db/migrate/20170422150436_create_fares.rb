class CreateFares < ActiveRecord::Migration[5.0]
  def change
    create_table :fares do |t|
      t.string :Starting_Range
      t.string :Ending_Range
      t.string :Price

      t.timestamps
    end
  end
end
