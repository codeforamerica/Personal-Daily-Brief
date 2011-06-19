class Topic < ActiveRecord::Base
  has_many :item_topics, :class_name => 'ItemTopic'
  has_many :items, :through => :item_topics
  has_many :user_topics, :class_name => 'UserTopic'
  has_many :users, :through => :user_topics
end
