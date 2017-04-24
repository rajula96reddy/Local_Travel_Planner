class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :E_mail
      t.string :Password
      t.string :License_Number
      t.string :Aadhaar_Number
      t.string :name

      t.timestamps
    end
  end
end
