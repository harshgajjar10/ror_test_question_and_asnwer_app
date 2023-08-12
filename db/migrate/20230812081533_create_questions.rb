class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.integer :topic_id
      t.integer :user_id

      t.timestamps
    end
  end
end
