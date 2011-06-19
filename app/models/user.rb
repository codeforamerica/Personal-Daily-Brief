class User < ActiveRecord::Base
  has_many :user_topics, :class_name => 'UserTopic'
  has_many :topics, :through => :user_topics

  def name
    [first_name, last_name].join(' ')
  end
end
