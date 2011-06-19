class UserTopic < ActiveRecord::Base
  set_table_name "users_topics"
  belongs_to :user
  belongs_to :topic
end
