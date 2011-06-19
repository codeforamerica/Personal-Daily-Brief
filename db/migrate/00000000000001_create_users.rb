class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.timestamps
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :voice_number
      t.string :sms_number
      t.string :facebook_id
      t.string :twitter_id
    end

    add_index :users, :email
    add_index :users, :facebook_id
    add_index :users, :twitter_id
  end
end
