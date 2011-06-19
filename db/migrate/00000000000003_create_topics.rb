class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.timestamps
      t.string :name
      t.string :color
    end
  end
end
