class AddFollowingIdsColumnIntoUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :following_user_ids, :text
  end
end
