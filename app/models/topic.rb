class Topic < ActiveRecord::Base
  has_many :item_topics, :class_name => 'ItemTopic'
  has_many :items, :through => :item_topics
  has_many :user_topics, :class_name => 'UserTopic'
  has_many :users, :through => :user_topics

  def self.random
    if (c = count) != 0
      find(:first, :offset => rand(c))
    end
  end

  def snake_name
    name.tr(' ', '_').downcase
  end
end
