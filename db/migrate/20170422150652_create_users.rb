class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :E_mail
      t.string :Password

      t.timestamps
    end
  end
end
