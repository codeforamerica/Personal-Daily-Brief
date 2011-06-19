class User < ActiveRecord::Base
  include Geokit::Geocoders

  has_many :user_topics, :class_name => 'UserTopic'
  has_many :topics, :through => :user_topics

  def name
    [first_name, last_name].join(' ')
  end

  def geocode
    self.lat, self.lng = MultiGeocoder.geocode([address, city, state, postal_code, country].join(' ')).ll.split(',').each{|s| s.to_f}
  end
end
