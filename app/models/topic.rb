class Topic < ActiveRecord::Base
  has_many :item_topics, :class_name => 'ItemTopic'
  has_many :items, :through => :item_topics
  has_many :user_topics, :class_name => 'UserTopic'
  has_many :users, :through => :user_topics
  before_save :set_color

  def self.random
    if (c = count) != 0
      find(:first, :offset => rand(c))
    end
  end

  def snake_name
    name.tr(' ', '_').downcase
  end

  def rgb_color
    color.scan(/../).map{|c| c.to_i(16)}
  end

  def set_color
    self.color ||= random_color
  end

  def reset_color
    self.color = random_color
  end

  def random_color
    rand(0xffffff).to_s(16)
  end
end
