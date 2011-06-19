class ItemTopic < ActiveRecord::Base
  set_table_name "items_topics"
  belongs_to :item
  belongs_to :topic
end
