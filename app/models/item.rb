class Item < ActiveRecord::Base
  has_many :item_topics, :class_name => 'ItemTopic'
  has_many :topics, :through => :item_topics
end
