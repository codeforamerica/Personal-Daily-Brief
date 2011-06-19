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
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.decimal :lat, :precision => 16, :scale => 14
      t.decimal :lng, :precision => 17, :scale => 14
    end

    add_index :users, :email
    add_index :users, :facebook_id
    add_index :users, :twitter_id
  end
end
