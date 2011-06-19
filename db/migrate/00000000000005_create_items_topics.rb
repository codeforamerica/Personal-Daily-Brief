class CreateItemsTopics < ActiveRecord::Migration
  def change
    create_table :items_topics do |t|
      t.timestamps
      t.integer :item_id
      t.integer :topic_id
    end

    add_index :items_topics, :item_id
    add_index :items_topics, :topic_id
  end
end
