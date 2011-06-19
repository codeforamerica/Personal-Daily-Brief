class CreateUsersTopics < ActiveRecord::Migration
  def change
    create_table :users_topics do |t|
      t.timestamps
      t.integer :user_id
      t.integer :topic_id
    end

    add_index :users_topics, :user_id
    add_index :users_topics, :topic_id
  end
end
