class CreateJoinTableUserTopic < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :topics do |t|
      # t.index [:user_id, :topic_id]
      # t.index [:topic_id, :user_id]
    end
  end
end
