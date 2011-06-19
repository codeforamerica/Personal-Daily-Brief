# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 5) do

  create_table "items", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "occurs_at"
    t.string   "title"
    t.string   "description"
    t.decimal  "lat",         :precision => 16, :scale => 14, :null => false
    t.decimal  "lng",         :precision => 17, :scale => 14, :null => false
    t.string   "room"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postal_code"
  end

  add_index "items", ["lat"], :name => "index_items_on_lat"
  add_index "items", ["lng"], :name => "index_items_on_lng"
  add_index "items", ["occurs_at"], :name => "index_items_on_occurs_at"

  create_table "items_topics", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "item_id"
    t.integer  "topic_id"
  end

  add_index "items_topics", ["item_id"], :name => "index_items_topics_on_item_id"
  add_index "items_topics", ["topic_id"], :name => "index_items_topics_on_topic_id"

  create_table "topics", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "voice_number"
    t.string   "sms_number"
    t.string   "facebook_id"
    t.string   "twitter_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["facebook_id"], :name => "index_users_on_facebook_id"
  add_index "users", ["twitter_id"], :name => "index_users_on_twitter_id"

  create_table "users_topics", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "topic_id"
  end

  add_index "users_topics", ["topic_id"], :name => "index_users_topics_on_topic_id"
  add_index "users_topics", ["user_id"], :name => "index_users_topics_on_user_id"

end
