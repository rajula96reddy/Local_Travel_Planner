class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.integer :Userid
      t.string :Feedback
      t.string :Reply

      t.timestamps
    end
  end
end
